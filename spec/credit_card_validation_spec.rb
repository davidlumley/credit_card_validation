require 'credit_card_validation'

describe 'credit_card_validation' do
  
  context 'a single valid card' do
    before :each do
      @amex         = '378282246310005'
      @discover     = '6011111111111117'
      @master_card  = '5105105105105100'
      @visa         = '4111111111111111'
    end
    
    it 'should validate a single valid amex card' do
      validate(@amex).should eql('Amex: 378282246310005 (valid)')
    end
    
    it 'should validate a single valid discover card' do
      validate(@discover).should eql('Discover: 6011111111111117 (valid)')
    end
    
    it 'should validate a single valid mastercard' do
      validate(@master_card).should eql('MasterCard: 5105105105105100 (valid)')
    end
    
    it 'should validate a single valid visa card' do
      validate(@visa).should eql('Visa: 4111111111111111 (valid)')
    end
    
  end
    
end