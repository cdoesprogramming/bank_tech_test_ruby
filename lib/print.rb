require_relative '../lib/statement'

class Print

  # attr_reader :balance, :deposit, :date, :credit, :transaction, :transaction_amount

  def initialize()
    @statement = Statement.new
    @balance = @balance
    # @deposit = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @transaction = []
    @transaction_amount = @transaction_amount
  end

  def print_header
    header = "date || credit || debit || balance"
    puts header
    return "date || credit || debit || balance"
  end

  def print_format()
    print_header
    # transaction.each do { |transaction| puts "#{date}" '||' @transaction_amount '||' @balance }
    # date = @statement.date
    # transaction_amount = @statement.transaction_amount
    # balance = @statement.balance
    puts "|| || ||"
    # printformat = [puts statement.date + "||" + statement.transaction_amount + '||' + statement.balance]
    return "|| || ||"
  end

end