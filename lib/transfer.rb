class Transfer
  
  attr_accessor :name, :sender, :transfer, :receiver, :status, :amount
  
  def initialize(name, sender, transfer)
    @name = sender
    @sender = name
    @receiver = sender
    @status = "pending"
    @amount = transfer
    #binding.pry
  end

  
def valid?
@sender.balance == 1000  && @receiver.balance == 1000
end

def execute_transaction
  if valid?
  @sender.balance = @sender.balance - @amount
  @receiver.balance = @receiver.balance + @amount
  self.status = "complete"
  else
    "Transaction rejected. Please check your account balance."
  #binding.pry
end
end 

def reverse_transfer
  @receiver.balance = @receiver.balance - @amount
  @sender.balance = @sender.balance + @amount
  self.status = "reversed"
  #binding.pry
end







  
  
end
