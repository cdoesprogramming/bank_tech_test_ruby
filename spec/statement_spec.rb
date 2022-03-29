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
    expect(statement.date()).to eq Time.new.strftime("%d/%m/%Y")
  end
  it "increases your balance by a particular amount" do
    statement = Statement.new
    statement.credit(10.00)
    expect(statement.balance()).to eq 10.00
    expect(statement.transaction).to eq ([Time.new.strftime("%d/%m/%Y"),10.00, 10.00])
  end

  describe '#deposit' do
    it "lets you deposit money into your account" do
      statement = Statement.new
      statement.deposit(50.00)
      expect(statement.balance()).to eq 50.00
      expect(statement.transaction).to eq ([Time.new.strftime("%d/%m/%Y"),50.00, 50.00])

    end
  end
  describe '#withdraw' do
    it "lets you withdraw money from your account" do
      statement = Statement.new
      statement.deposit(50.00)
      statement.withdraw(20.00)
      expect(statement.balance()).to eq 30.00
      expect(statement.date()).to eq Time.new.strftime("%d/%m/%Y")
      expect(statement.transaction).to eq ([Time.new.strftime("%d/%m/%Y"),20.00, 30.00])
    end
  end
  it "prints the statement in the correct format" do
      statement = Statement.new
      statement.deposit(1000.00)
      statement.deposit(2000.00)
      statement.withdraw(500.00)
      expect(statement.bank_statement).to eq ([["29/03/2022", 1000.0, 1000.0], ["29/03/2022", 2000.0, 3000.0], ["29/03/2022", 500.0, 2500.0]])
    end
    describe '#print_header' do
    it "prints the 'header' of a bank statement" do
      bank_statement = Print.new
      expect(bank_statement.print_header).to include("date || credit || debit || balance")
    end
  end
end