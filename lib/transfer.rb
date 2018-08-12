class Transfer
  attr_accessor :bankaccount, :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    BankAccount.valid?(self.sender) && BankAccount.valid?(self.receiver)
  end


end
