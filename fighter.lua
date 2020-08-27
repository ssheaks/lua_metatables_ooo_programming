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
blanka = Fighter:new({
    name = "Blanka",
    health = 100,
    speed = 60
})
print("Object "..blanka.name.." was created.")

chun_li = Fighter:new({
    name = "Chun Li",
    health = 100,
    speed = 85
})
print("Object "..chun_li.name.." was created.")

------------------------------------
-- Call object methods
------------------------------------
blanka:light_punch()
blanka:heavy_kick()
blanka:special_attack()

chun_li:light_punch()
chun_li:heavy_kick()
chun_li:special_attack()