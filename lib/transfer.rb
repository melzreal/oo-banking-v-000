class Transfer
  attr_accessor :bank_account, :status
  attr_reader :sender, :reciever, :amount

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = 'pending'
  end

  def valid?
    BankAccount.valid?(self.sender) && BankAccount.valid?(self.reciever)
  end


end
