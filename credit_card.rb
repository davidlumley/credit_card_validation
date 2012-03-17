class CreditCard
  
  attr_accessor :number
  
  def initialize(number)
    @number = number.gsub(/\s+/, '')
  end
  
  def type?
    
  end
  
end