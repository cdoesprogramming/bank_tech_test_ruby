require_relative '../lib/statement'

class Print
  attr_reader :balance, :deposit, :date, :credit

  def initialize
    @statement = Statement.new
  end

  def print_header
    header = "date || credit || debit || balance"
    puts header
    return "date || credit || debit || balance"
  end

  def print_date()
    # statement = Statement.new
    date = @statement.date
    puts "#{date} || ||"
    return date
  end

  def print_balance()
    @statement.balance 
    p "|| || #{@statement.balance}"
    # puts @balance
    # return @balance
  end

end