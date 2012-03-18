require 'lib/credit_card'

def validate(numbers)
  numbers.each do |number|
    credit_card = CreditCard.new(number)
    puts credit_card.validation_status
  end
end