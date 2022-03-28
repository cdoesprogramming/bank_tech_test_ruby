require_relative '../lib/print'

describe Print do
  describe '#print_header' do
    it "prints the 'header' of a bank statement" do
      bank_statement = Print.new
      expect(bank_statement.print_header).to include("date || credit || debit || balance")
    end
    it "prints the date" do
      bank_statement = Print.new
     
      expect(bank_statement.print_date).to eq (Time.new.strftime("%d/%m/%Y"))
    end
    it "prints the date, latest transaction and current balance" do
      bank_statement = Print.new
      statement = Statement.new
      statement.deposit(3000.00)
      statement.withdraw(500.00)
      statement.balance
      expect(bank_statement.print_balance).to eq ("|| || 500.00 || 2500.00")
    end
  end
end