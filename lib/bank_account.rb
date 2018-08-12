class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize
    @name = name
    @status = pending
    @balance = 1000
  end



end
