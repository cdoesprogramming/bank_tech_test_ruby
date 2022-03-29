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
  # let(:statement.deposit) { double(:statement.deposit)}
  # it "prints a statement with a transaction in the correct format" do
  #   bank_statement = Print.new
  #   statement = Statement.new
  #   statement.deposit(1000.00)  
  #   statement.deposit(2000.00)     
  #   statement.withdraw(500.00)    
  #   # expect(statement.date()).to eq Time.new.strftime("%d/%m/%Y")
  #   # expect(statement.transaction_amount()).to eq 500.00
  #   expect(statement.balance()).to eq 2500.00
  #   expect(statement.print_format).to eq ("|| || 500.00 || 2500.00")
  # end
end
# blocked: trying to print one line of the bank statement that includes the date, the transaction amount and the balance
# I will probably need to create a variable that tracks the amount debited/credited/withdrawn and then interpolate it