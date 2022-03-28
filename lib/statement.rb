class Statement

  attr_reader :balance, :deposit

  def initialize
    @balance = 0
    # @deposit = 0
    @date = ()
  end

  def deposit(amount)
    @balance += amount
  end



end