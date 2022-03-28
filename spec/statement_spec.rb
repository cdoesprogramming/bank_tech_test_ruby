require_relative '../lib/statement'
describe Statement do
    it " allows you to check your balance" do
      statement = Statement.new
      statement.balance
      expect(statement.balance()).to eq 0
  end

  describe '#deposit' do
    it "lets you deposit money into your account" do
      statement = Statement.new
      statement.deposit(50)
      expect(statement.balance()).to eq 50
    end
  end
  describe '#withdraw' do
    it "lets you withdraw money from your account" do
      statement = Statement.new
      statement.deposit(50)
      statement.withdraw(20)
      expect(statement.balance()).to eq 30
    end
  end
end