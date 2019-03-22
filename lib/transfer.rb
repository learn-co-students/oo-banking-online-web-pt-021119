require 'pry'
class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if self.status == "complete"
      "Transfer can only happen once."
    elsif sender.balance > amount 
      sender.balance -= amount 
      receiver.deposit(amount) 
      self.status = "complete"
    elsif sender.balance < amount
      self.status = "rejected"
     "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer 
    if self.status == "complete" && receiver.balance > amount 
      receiver.balance -= amount 
      sender.deposit(amount)
      self.status = "reversed"
    end 
  end
end
