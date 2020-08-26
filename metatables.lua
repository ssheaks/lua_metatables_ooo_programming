-- this is a helper method table that tells the code how to add, subtract, etc
local meta = {}
local vector3d = {}

------------------------------------------
-- Declare a new vector3d constructor
------------------------------------------
-- vector3d["new"] = function (d, y, z) is same as below. Basically assigning a function to the key "new". Basically a constructor in OOO.
function vector3d.new(x, y, z)
    local v = {x = x, y = y, z = z}
    setmetatable(v, meta)
    return v, meta
end

-- metatable adding 2 vectors
function vector3d.add(v1, v2)
    return vector3d.new((v1.x + v2.x), (v1.y + v2.y), (v1.z + v2.z))
end
meta.__add = vector3d.add

--metatable subtracting 2 vectors
function vector3d.sub(v1, v2)
    return vector3d.new((v1.x - v2.x), (v1.y - v2.y), (v1.z - v2.z))
end
meta.__sub = vector3d.sub

-- use tostring method to print table
function vector3d.tostring(v)
    return "("..v.x..","..v.y..","..v.z..")"
end
meta.__tostring = vector3d.tostring

-----------------------------------------
-- Create two vector3d tables
-----------------------------------------
position = vector3d.new(5.0, 5.0, 5.0)
setmetatable(position, meta)
velocity = vector3d.new(10.0, -3.5, 0.0)
setmetatable(velocity, meta)

local result = position + velocity
local subresult = position - velocity
-- checking table values
for i, val in pairs(position) do
    print(i.." ,"..val)
end
for i, val in pairs(velocity) do
    print(i.." ,"..val)
end

print(position)
print(velocity)
print (result)
print(subresult)