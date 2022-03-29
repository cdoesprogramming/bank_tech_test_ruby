require_relative '../lib/print'

describe Print do
  describe '#print_header' do
    it "prints the 'header' of a bank statement" do
      bank_statement = Print.new
      expect(bank_statement.print_header).to include("date || credit || debit || balance")
    end
  end
end
