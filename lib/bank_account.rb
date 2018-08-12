class BankAccount
  attr_accessor :status, :balance
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
    @@all << self
  end

  def deposit(amount)
    @balance+= amount
    @balance
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.balance <= 0 || self.status =='closed' ? false : true
  end

  def close_account
    @@all.clear
  end



end
