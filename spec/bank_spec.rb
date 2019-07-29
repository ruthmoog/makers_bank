require 'bank'

RSpec.describe "Bank" do

  it "accepts deposits" do
    bank = Bank.new
    bank.deposit(10)

    expect(bank.balance).to eq(10.00)
    expect { bank.deposit(20) } .to change { 
      bank.balance } .from(10.00).to(30.00)
  end

  it "accepts withdrawals" do
    bank = Bank.new
    bank.deposit(10)
    bank.withdraw(5)

    expect(bank.balance).to eq(5.00)
    expect {bank.withdraw(30) } .to change {
      bank.balance } .from(5.00).to(-25.00)
  end

  context "when no transactions are made" do
    it "prints a blank statement" do
      bank = Bank.new
      today = Time.new.strftime("%d/%m/%Y")

      expect(bank.print_statement).to eq("date || credit || debit || balance\n#{today} || || || 0.00")
    end
  end

  context "when a deposit has been made" do
    it "the statement log is updated" do
      bank = Bank.new
      expect { bank.deposit(10) } .to change { 
        bank.statement_log.length } .from(0).to(1)
    end
  end

end
