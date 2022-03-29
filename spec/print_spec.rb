require_relative '../lib/print'

describe Print do
  describe '#print_header' do
    it "prints the 'header' of a bank statement" do
      bank_statement = Print.new
      expect(bank_statement.print_header).to include("date || credit || debit || balance")
    end
    it "prints the statement in the correct format" do
      bank_statement = Print.new
     
      expect(bank_statement.print_format).to eq ("|| || ||")
    end
  end
end
# blocked: trying to print one line of the bank statement that includes the date, the transaction amount and the balance
# I will probably need to create a variable that tracks the amount debited/credited/withdrawn and then interpolate it