# frozen_string_literal: true

# Prints bank statements
class Statement
  # print a statement by:
  ## formatting the head
  ## getting the log
  # ##if log is empty,
  ### get the balance
  ### format the balance
  ## else format the log
  # pass the result to the Bank

  def print(log)
    header = "date || credit || debit || balance\n"
    if log.empty?
      body = "#{format_date} || || || 0.00" # {format_currency(balance)}"
      p header + body
    else
      puts header
      log.each do |transaction|
        puts transaction
      end
    end
  end

  def format_date
    Time.new.strftime('%d/%m/%Y')
  end
end
