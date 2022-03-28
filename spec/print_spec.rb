require_relative '../lib/print'

describe Print do
  describe '#print' do
    it "prints a bank statement" do
      bank_statement = Print.new
      expect(bank_statement.print).to include("date || credit || debit || balance")
    end
  end
end