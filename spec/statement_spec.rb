# frozen_string_literal: true

require 'statement'

RSpec.describe 'Statement' do
  context 'when no transactions are made' do
    it 'prints a blank statement' do
      statement = Statement.new
      today = Time.new.strftime('%d/%m/%Y')

      expected = "date || credit || debit || balance\n#{today} || || || 0.00"
      expect(statement.print([])).to eq(expected)
    end
  end
end
