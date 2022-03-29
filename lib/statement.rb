require_relative '../lib/print'

class Statement

  attr_reader :balance, :deposit, :date, :credit, :transaction, :transaction_amount, :bank_statement

  def initialize(print_class: Print)
    @balance = 0.00
    # @deposit = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @transaction = []
    @transaction_amount = 0.00
    @print_class = print_class
    @bank_statement = []
  end

  def deposit(amount)
    @balance += amount
    @transaction_amount = amount
    @transaction_amount
    @transaction = [date, transaction_amount, balance]
    @bank_statement << transaction
    # @transaction << date
    # puts "#{@date} #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_amount = amount
    @transaction_amount
    @transaction = [date, transaction_amount, balance]
    @bank_statement << transaction
    # @transaction << date
    # puts  "#{@date} #{@balance} "
  end

  def credit(amount)
    @balance += amount
    @transaction_amount = amount
    # puts @transaction_amount
    @transaction = [date, transaction_amount, balance]
     @bank_statement << transaction.join("\n")
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

  def print_format()
    # p @transaction = [date, transaction_amount, balance]
    # p @bank_statement << @transaction.join(" || ")
    
  #  @bank_statement.join("\n") 
  #   @bank_statement.join(" || ")
    bank_statement.reverse.each_slice(1).with_index do |part, ind|
      puts part.join(" || ") + (ind == 3 ? "" : " ")
    end
    # return transaction
    # return bank_statement
  #  p bank_statement.join(" || ")
    # date = @statement.date
    # transaction_amount = @statement.transaction_amount
    # balance = @statement.balance
    # print = @print.format(@transaction_amount)
    # print_transaction.print_format 
  end

end
