class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize
    @name = name
    @status = pending
    @balance = 1000
  end

  def deposit(amount)
    @balance+= amount
    @balance
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end



end
