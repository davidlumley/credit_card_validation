class CreditCard
  
  attr_accessor :number
  
  CARD_TYPES = {
    'AMEX'        => /^3[47]\d{13}$/,
    'Discover'    => /^6011\d{12}$/,
    'MasterCard'  => /^5[1-5]\d{14}$/,
    'Visa'        => /^4\d{12}(\d{3})?$/
  }
  
  def initialize(number)
    @number = number.gsub(/\s+/, '')
  end
  
  def type?
    CARD_TYPES.each do |type, regex|
      return type if @number =~ regex
    end
    'Unknown'
  end
  
  def valid?
    i = 0
    sum = 0
    
    @number.reverse.split('').map(&:to_i).map do |digit|
      i += 1
      
      digit *= 2 if i.even?
      digit -= 9 if digit > 9   # subtracting 9 is the same as adding the parts of a number greater than 9 but less than 20 together
      
      sum += digit
    end
    
    sum % 10 == 0 ? true : false
  end
  
end