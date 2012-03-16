require 'credit_card'

describe CreditCard do

  context 'valid AMEX' do
        
    before :each do
      @credit_card = CreditCard.new('378282246310005')
    end
      
    it 'should set the card type to AMEX' do
      @credit_card.type?.should eql('AMEX')
    end  
    
  end
  
  
  
  context 'invalid AMEX' do
    
    before :each do
      @credit_card = CreditCard.new('378282246310006')
    end
    
    it 'should set the card type to AMEX' do
      @credit_card.type?.should eql('AMEX')
    end
    
  end
  
  
  
  context 'valid Discover' do
    
    before :each do
      @credit_card = CreditCard.new('6011111111111117')
    end
    
    it 'should set the card type to Discover' do
      @credit_card.type?.should eql('Discover')
    end
    
  end
  
  
  
  context 'invalid Discover' do
    
    before :each do
      @credit_card = CreditCard.new('6011111111111118')
    end
    
    it 'should set the card type to Discover' do
      @credit_card.type?.should eql('Discover')
    end
    
  end
  
  
  
  context 'valid MasterCard' do
    
    before :each do
      @credit_card = CreditCard.new('5105105105105100')
    end
    
    it 'should set the card type to MasterCard' do
      @credit_card.type?.should eql('MasterCard')
    end
    
  end
  
  
  
  context 'invalid MasterCard' do
    
    before :each do
      @credit_card = CreditCard.new('5105105105105106')
    end
    
    it 'should set the card type to MasterCard' do
      @credit_card.type?.should eql('MasterCard')
    end
    
  end
  
  
  
  context 'valid Visa' do
    
    before :each do
      @credit_card = CreditCard.new('4111111111111111')
    end
    
    it 'should set the card type to Visa' do
      @credit_card.type?.should eql('Visa')
    end
    
  end
  
  
  
  context 'invalid Visa' do
    
    before :each do
      @credit_card = CreditCard.new('4111111111111')
    end
    
    it 'should set the card type to Visa' do
      @credit_card.type?.should eql('Visa')
    end
    
  end
  
  
  
  context 'invalid unknown card' do
    
    before :each do
      @credit_card = CreditCard.new('9111111111111111')
    end
    
    it 'should set the card type to Unknown' do
      @credit_card.type?.should eql('Unknown')
    end
    
  end
  
end