class Bank
  attr_reader :balance

  def initialize
    @balance = 0.00
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_statement
    p "date || credit || debit || balance"
  end
end
