class Statement

  attr_reader :balance, :deposit, :date

  def initialize
    @balance = 0
    # @deposit = 0
    @date = Time.new.strftime("14/01/2023")
  end

  def deposit(amount)
    @balance += amount
    puts  "#{@date} #{@balance} "
  end

  def withdraw(amount)
    @balance -= amount
  end



end