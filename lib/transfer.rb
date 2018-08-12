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
    self.balance <= 0 || self.status =='closed' ? false : true
  end


end
