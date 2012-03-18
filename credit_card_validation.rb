require 'lib/credit_card'

def validate(number)
  credit_card = CreditCard.new(number)
  sprintf "%-28s (#{credit_card.valid? ? 'valid' : 'invalid'})\n", "#{credit_card.type?}: #{credit_card.number}"
end