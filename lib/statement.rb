# frozen_string_literal: true

# Prints bank statements
class Statement
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
