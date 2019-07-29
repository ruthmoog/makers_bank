require 'bank'

RSpec.describe "Bank" do
  bank = Bank.new

  it "accepts deposits" do
    bank.deposit(10)
    expect(bank.balance).to eq(10.00)
  end

end
