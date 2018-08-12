class Transfer
  attr_accessor :bank_account, :status
  attr_reader :sender, :receiver

  def initialize
    @status = 'pending'
  end


  
end
