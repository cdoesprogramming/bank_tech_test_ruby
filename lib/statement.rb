require_relative '../lib/print'

class Statement

  attr_reader :balance, :deposit, :date, :credit

  def initialize
    @balance = 0.00
    # @deposit = 0
    @date = Time.now.strftime("%m/%d/%Y")
  end

  def deposit(amount)
    @balance += amount
    puts "#{@date} #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    puts  "#{@date} #{@balance} "
  end

  def credit(amount)
    @balance += amount
    puts "#{date} #{@balance}"
  end

end