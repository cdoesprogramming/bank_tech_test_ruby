require_relative '../lib/print'

class Statement

  attr_reader :balance, :deposit, :date, :credit, :transaction, :transaction_amount, :bank_statement

  def initialize(print_class: Print)
    @balance = 0.00
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
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_amount = amount
    @transaction_amount
    @transaction = [date, transaction_amount, balance]
    @bank_statement << transaction
  end

  def credit(amount)
    @balance += amount
    @transaction_amount = amount
    @transaction = [date, transaction_amount, balance]
     @bank_statement << transaction.join("\n")
  end

  def print_header
    header = "date || credit || debit || balance"
  end

  def print_format()
    puts print_header
    bank_statement.reverse.each_slice(1).with_index do |part, ind|
      puts part.join(" || ") + (ind == 3 ? "" : " ")
    end 
  end
end
