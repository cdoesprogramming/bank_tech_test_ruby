require_relative '../lib/statement'
require_relative '../lib/print'


describe Statement do
    it " allows you to check your balance" do
      statement = Statement.new
      statement.balance
      expect(statement.balance()).to eq 0.00
  end
  it "displays the date of your transaction" do
    statement = Statement.new
    statement.balance
    statement.deposit(50.00)
    expect(statement.balance()).to eq 50.00
    expect(statement.date()).to eq Time.new.strftime("%m/%d/%Y")
  end
  it "increases your balance by a particular amount" do
    statement = Statement.new
    statement.credit(10.00)
    expect(statement.balance()).to eq 10.00
  end

  describe '#deposit' do
    it "lets you deposit money into your account" do
      statement = Statement.new
      statement.deposit(50.00)
      expect(statement.balance()).to eq 50.00
      expect(statement.date()).to eq Time.new.strftime("%m/%d/%Y")
    end
  end
  describe '#withdraw' do
    it "lets you withdraw money from your account" do
      statement = Statement.new
      statement.deposit(50.00)
      statement.withdraw(20.00)
      expect(statement.balance()).to eq 30.00
      expect(statement.date()).to eq Time.new.strftime("%m/%d/%Y")
    end
  end
end