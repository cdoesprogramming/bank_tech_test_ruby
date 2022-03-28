class Statement

  attr_reader :balance, :deposit, :date

  def initialize
    @balance = 0
    # @deposit = 0
    @date = Time.now.strftime("%m/%d/%Y")
  end

  def deposit(amount)
    @balance += amount
    puts  "#{@date} #{@balance} "
  end

  def withdraw(amount)
    @balance -= amount
  end

  # def date(date)
  #   p @date = Time.new.strftime("")
  # end



end