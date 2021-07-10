class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
  	@sender = sender
  	@receiver = receiver
  	@status = 'pending'
  	@amount = amount
  end


  def valid?
	@sender.valid? and @receiver.valid?
  end

  def execute_transaction
  	if @sender.valid? and @status == 'pending' and @sender.balance >= @amount
  		@sender.balance -= @amount
  		@receiver.balance += @amount
  		@status = 'complete'
  	else
  		@status = 'rejected'
  		return "Transaction rejected. Please check your account balance."
  	end
  end

  def reverse_transfer
  	if @receiver.valid? and @status == 'complete' and @receiver.balance >= @amount
  		@receiver.balance -= @amount
  		@sender.balance += @amount
  		@status = 'reversed'
  	end
  end

end