# frozen_string_literal: true

# Bank allows deposits, withdrawals
class Bank
  attr_reader :balance, :statement_log

  def initialize
    @balance = 0.00
    @statement_log = []
  end

  def deposit(amount)
    log_and_credit(amount)
  end

  def withdraw(amount)
    log_and_debit(amount)
  end

  def print_statement(statement = Statement.new)
    statement.print(statement_log)
  end

  def add_to_log(transaction_info)
    @statement_log.unshift(transaction_info)
  end

  def format_date
    Time.new.strftime('%d/%m/%Y')
  end

  def format_currency(transaction)
    format('%0.2f', transaction)
  end

  def log_and_debit(amount)
    @balance -= amount
    add_to_log(
      "#{format_date} || || #{format_currency(amount)} || #{format_currency(balance)}"
    )
  end

  def log_and_credit(amount)
    @balance += amount
    add_to_log(
      "#{format_date} || #{format_currency(amount)} || || #{format_currency(balance)}"
    )
  end
end
