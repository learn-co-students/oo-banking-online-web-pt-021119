class BankAccount

attr_reader :balance, :status, :name
def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit(money)
@balance = 1000 + money
#binding.pry
end

def display_balance
   "Your balance is $#{@balance}."
end


end
