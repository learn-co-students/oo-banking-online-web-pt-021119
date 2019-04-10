class BankAccount

attr_accessor :balance, :status
attr_reader :name

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit(number)
  self.balance += number
end

def valid?
  status == "open" && balance > 0
end

def display_balance
  return "Your balance is $#{balance}."
end

def close_account
  self.status = "closed"

end
end
