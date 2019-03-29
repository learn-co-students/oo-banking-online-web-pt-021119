class BankAccount
attr_accessor :balance, :status, :broke
attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
  @broke = 0
  @@all << self
  #binding.pry
end

 def self.all
   self
  end
  
def deposit(money)
@balance = 1000 + money
#binding.pry
end

def display_balance
   "Your balance is $#{@balance}."
end

def valid?
self.balance == 1000 && self.status == "open"
end

def close_account
 @status = "closed" 
end
end
