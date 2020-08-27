-------------------------------------
-- Define the class attributes
-------------------------------------
Fighter = {
    name = "",
    health = 0,
    speed = 0
}

------------------------------------
-- Define the class methods
------------------------------------
function Fighter:light_punch()
    print("Fighter "..self.name.." performed a light punch")
end

function Fighter:heavy_punch()
    print("Fighter "..self.name.." performed a heavy punch")
end

function Fighter:light_kick()
    print("Fighter "..self.name.." performed a light kick")
end

function Fighter:heavy_kick()
    print("Fighter "..self.name.." performed a heavy kick")
end

function Fighter:special_attack()
    print("Fighter "..self.name.." performed a special attack!!!")
end

------------------------------------
-- Define the class constructor
------------------------------------
function Fighter:new(t)
    -- new fighter will be t or {}
    t = t or {}
    -- bind metamethods to object
    setmetatable(t, self)
    -- binds methods and parameters to object
    self.__index = self
    return t
end

------------------------------------
-- Create two fighter objects
------------------------------------