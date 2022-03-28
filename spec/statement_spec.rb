require_relative '../lib/statement'
describe '#balance' do
  it " allows you to check your balance" do
    expect(balance()).to eq 0.00
  end
end