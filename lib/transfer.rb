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
    sender.balance <= 0 || sender.status =='closed' ? false : true 
    receiver.balance <= 0 || receiver.status =='closed' ? false : true 
  end


end
