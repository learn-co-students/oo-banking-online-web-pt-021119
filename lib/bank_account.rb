class BankAccount
   attr_accessor :name, :balance, :status
   
   def initialize(name)
     @name = name
     @balance = 1000
     @status = "open"
   end
   
   def name=(name)
     name.freez
   end
   
   def deposit(money)
     @balance = 1000 + money
   end
     
    def display_balance
      "Your balance is $#{@balance}."
    end
    
    def valid?
    if @status == "open" && @balance > 0
      true
    else
      false
    end
  end
  
  def close_account
    @status = "closed"
  end
  
end