require_relative '../lib/print'

class Statement

  attr_reader :balance, :deposit, :date, :credit, :transaction, :transaction_amount

  def initialize
    @balance = 0.00
    # @deposit = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @transaction = []
    @transaction_amount = 0.00
    # @print = Print.new
  end

  def deposit(amount)
    @balance += amount
    @transaction_amount = amount
    puts @transaction_amount
    @transaction = [date, transaction_amount, balance]
    # @transaction << date
    # puts "#{@date} #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_amount = amount
    puts @transaction_amount
    @transaction = [date, transaction_amount, balance]
    # @transaction << date
    # puts  "#{@date} #{@balance} "
  end

  def credit(amount)
    @balance += amount
    @transaction_amount = amount
    # puts @transaction_amount
    @transaction = [date, transaction_amount, balance]
    # @transaction << balance
    # @transaction << date
    # puts "#{date} #{@balance}"
  end

  # def transaction_history(transaction)
  #   @transaction_amount = amount
  #   puts @transaction_amount
  #   # puts @balance
  #   # puts @date
  #   # puts @balance
  #   # return @date
  # end

  def print_format
    # date = @statement.date
    # transaction_amount = @statement.transaction_amount
    # balance = @statement.balance
    # print = @print.format(@transaction_amount)
     transaction 
  end

end
