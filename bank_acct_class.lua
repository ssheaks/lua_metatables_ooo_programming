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