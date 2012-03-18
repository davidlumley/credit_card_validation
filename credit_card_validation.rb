require 'lib/credit_card'

def validate(number)
  credit_card = CreditCard.new(number)
  "#{credit_card.type?}: #{credit_card.number} (#{credit_card.valid? ? 'valid' : 'invalid'})"
end