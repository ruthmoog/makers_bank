class Bank
  attr_reader :balance, :statement_log

  def initialize
    @balance = 0.00
    @statement_log = []
  end

  def deposit(amount)
    @balance += amount
    add_to_log("#{Time.new.strftime("%d/%m/%Y")} || %0.2f" % [amount] + " || || %0.2f" % [balance])
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_statement
    if @statement_log.empty?
      p "date || credit || debit || balance" + "\n" + "#{Time.new.strftime("%d/%m/%Y")} || || || %0.2f" % [balance]
    else
      puts statement = "date || credit || debit || balance"
      @statement_log.each do |transaction|
        puts transaction
      end
    end
  end

  def add_to_log(transaction_info)
    @statement_log << transaction_info
  end

end
