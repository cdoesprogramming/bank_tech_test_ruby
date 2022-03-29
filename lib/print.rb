require_relative '../lib/statement'

class Print

  def print_header
    header = "date || credit || debit || balance"
    puts header
    return "date || credit || debit || balance"
  end

  def print_format()
    puts "|| || ||"
    return "|| || ||"
  end

end