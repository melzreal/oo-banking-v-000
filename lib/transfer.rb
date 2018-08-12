class Transfer
  attr_accessor :status, :bankaccount
  attr_reader :sender, :receiver, :amount
  @@transfers = []

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    valid?
    sender.balance = sender.balance - amount
    receiver.balance = receiver.balance + amount
    self.status = 'complete'

  end

  def reverse_transfer
  end

end
