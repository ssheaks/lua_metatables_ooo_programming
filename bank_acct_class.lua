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

function BankAccount:withdraw(amount)
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

------------------------------------
-- Create/Instantiate object
------------------------------------
johns_acct = BankAccount:new({
    account_number = 1234,
    holder_name = "John Smith",
    balance = 550.50
})

print("New account object...")
print(johns_acct.balance)
johns_acct:deposit(400.00)
print(johns_acct.balance)
johns_acct:withdraw(75.00)
print(johns_acct.balance)