-------------------------------------
-- Define the class attributes
-------------------------------------
BankAccount = {
    account_number = 0,
    holder_name = "",
    balance = 0.0
}

------------------------------------
-- Define the class methods
------------------------------------
function BankAccount:deposit(amount)
    self.balance = self.balance + amount
end

function BankAccount:withdraw(ammount)
    self.balance = self.balance - amount
end

------------------------------------
-- Define the class constructor
------------------------------------
function BankAccount:new(t)
    t = t or {}
    setmetatable(t, self)
    self.__index = self
    return t
end