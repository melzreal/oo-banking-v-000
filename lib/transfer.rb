class Transfer
  attr_accessor :bank_account, :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    @sender.BankAccount.valid? && @receiver.BankAccount.valid?
  end


end
