require_relative '../lib/statement'

class Print
  attr_reader :balance, :deposit, :date, :credit

  def print_header
    header = "date || credit || debit || balance"
    puts header
    return "date || credit || debit || balance"
  end

  def print_date()
    statement = Statement.new
    puts date = statement.date
    return date
  end

end