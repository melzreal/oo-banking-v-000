class Transfer
  attr_accessor :bankaccount, :status, :bank_account
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    BankAccount.balance <= 0 || BankAccount.status =='closed' ? false : true
  end


end
