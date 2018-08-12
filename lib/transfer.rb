class Transfer
  attr_accessor :bank_account, :status
  attr_reader :sender, :receiver

  def initialize
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end



end
