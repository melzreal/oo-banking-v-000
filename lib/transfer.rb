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
  end

  def reverse_transfer
  end

end
