require 'credit_card_validation'

describe 'credit_card_validation' do
  
  context 'a single valid card' do
    before :each do
      @amex         = CreditCard.new('378282246310005')
      @discover     = CreditCard.new('6011111111111117')
      @master_card  = CreditCard.new('5105105105105100')
      @visa         = CreditCard.new('4111111111111111')
    end
    
    it 'should validate a single valid amex card' do
      @amex.validation_status.gsub(/\n/, '').should eql('AMEX: 378282246310005        (valid)')
    end
    
    it 'should validate a single valid discover card' do
      @discover.validation_status.gsub(/\n/, '').should eql('Discover: 6011111111111117   (valid)')
    end
    
    it 'should validate a single valid mastercard' do
      @master_card.validation_status.gsub(/\n/, '').should eql('MasterCard: 5105105105105100 (valid)')
    end
    
    it 'should validate a single valid visa card' do
      @visa.validation_status.gsub(/\n/, '').should eql('VISA: 4111111111111111       (valid)')
    end
    
  end
  
  context 'a single invalid card' do
    before :each do
      @amex         = CreditCard.new('378282246310006')
      @discover     = CreditCard.new('6011111111111118')
      @master_card  = CreditCard.new('5105105105105106')
      @visa         = CreditCard.new('4111111111111')
      @unknown      = CreditCard.new('9111111111111111')
    end
    
    it 'shouldn\'t validate a single invalid amex card' do
      @amex.validation_status.gsub(/\n/, '').should eql('AMEX: 378282246310006        (invalid)')
    end
    
    it 'shouldn\'t validate a single invalid discover card' do
      @discover.validation_status.gsub(/\n/, '').should eql('Discover: 6011111111111118   (invalid)')
    end
    
    it 'shouldn\'t validate a single invalid mastercard' do
      @master_card.validation_status.gsub(/\n/, '').should eql('MasterCard: 5105105105105106 (invalid)')
    end
    
    it 'shouldn\'t validate a single invalid visa card' do
      @visa.validation_status.gsub(/\n/, '').should eql('VISA: 4111111111111          (invalid)')
    end
    
    it 'shouldn\'t validate a single invalid unknown card' do
      @unknown.validation_status.gsub(/\n/, '').should eql('Unknown: 9111111111111111    (invalid)')
    end
    
  end
    
end