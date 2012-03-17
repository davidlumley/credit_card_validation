class CreditCard
  
  attr_accessor :number
  
  def initialize(number)
    @number = number.gsub(/\s+/, '')
  end
  
  def type?
    
    # begins with 3, followed by a 4 or 7, followed by 13 digits
    if @number =~ /^3[47]\d{13}$/
      'AMEX'
      
    # begins with 6011 followed by 12 digits
    elsif @number =~ /^6011\d{12}$/
      'Discover'
      
    # begins with a 3, followed by a digit between 1 and 5, followed by 14 digits
    elsif @number =~ /^5[1-5]\d{14}$/
      'MasterCard'
    
    # begins with a 4, followed by 12 digits, possibly followed by an additional 3
    # add regex group for final digit because 1.8.7 doesn't like \d{3}?
    elsif @number =~ /^4\d{12}(\d{3})?$/
      'Visa'
    
    # doesn't match any of the above regex
    else
      'Unknown'
    end
    
  end
  
  ###
  # Implementation of the Luhn algorithm
  #
  # reverse the number and for every even digit double it
  # if the digit is greater than 9, add the seperate parts together (i.e. 10 -> 1 + 0)
  # if the total sum of digits is divisible by 10, the card is valid
  def valid?
    i = 0
    sum = 0
    @number.reverse.split('').map do |digit|
      i += 1
      digit = digit.to_i
      digit *= 2 if i.even?
      if digit > 9
        digit = digit.to_s.split('')
        digit = digit[0].to_i + digit[1].to_i
      end
      sum += digit
    end
    if sum % 10 == 0
      true
    else
      false
    end
  end
  
end