class Bank
  attr_reader :balance

  def initialize
    @balance = 0.00
    @statement_log = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_statement
    if @statement_log.empty?
      p "date || credit || debit || balance" + "\n" + "#{Time.new.strftime("%d/%m/%Y")} || || || %0.2f" % [balance]
    end
  end
end
