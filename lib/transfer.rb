# require 'pry'

class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  #
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid?
    @receiver.valid?
end

def execute_transaction
  # binding.pry
#need to transfer from the sender account to the receiver account
if sender.valid? == true && @status == "pending"
sender.balance = sender.balance - amount
receiver.balance = receiver.balance + amount
@status = "complete"
if sender.valid? == false
  @status = "rejected"
  return "Transaction rejected. Please check your account balance."
    end
  end
end

def reverse_transfer
  if @status == "complete"
    sender.balance = sender.balance + amount
    receiver.balance = receiver.balance - amount
    @status = "reversed"
  end
end

end
