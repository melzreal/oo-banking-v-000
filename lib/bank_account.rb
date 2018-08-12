class BankAccount
  attr_accessor :status
  attr_reader :name

  def initialize(name)
    @name = name
    @status = open
  end

end
