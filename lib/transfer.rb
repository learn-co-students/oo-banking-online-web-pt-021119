class Transfer
  attr_accessor :name, :sender, :transfer, :receiver
  def initialize(name, sender, transfer)
    @name = sender
    @sender = name
    @receiver = BankAccount.name
    #binding.pry
  end
end
