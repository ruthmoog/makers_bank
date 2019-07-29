require 'bank'

RSpec.describe "Bank" do
  bank = Bank.new

  it "says hello world" do
    expect(bank.hello).to eq("Hello, World!")
  end

end
