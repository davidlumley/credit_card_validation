require 'credit_card'

describe CreditCard do

  context 'generic number' do
    
    before :each do
      @credit_card = CreditCard.new('1 2 3 4 5 6 7 8910')
    end
    
    it 'should strip spaces from the card number' do
      @credit_card.number.should eql('12345678910')
    end
    
  end

  context 'valid AMEX' do
        
    before :each do
      @credit_card = CreditCard.new('3782 8224 6310 005')
    end
      
    it 'should set the card type to AMEX' do
      @credit_card.type?.should eql('AMEX')
    end
    
    it 'should validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(true)
    end
    
  end
  
  
  
  context 'invalid AMEX' do
    
    before :each do
      @credit_card = CreditCard.new('378282246310006')
    end
    
    it 'should set the card type to AMEX' do
      @credit_card.type?.should eql('AMEX')
    end
    
    it 'should not validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(false)
    end
    
  end
  
  
  
  context 'valid Discover' do
    
    before :each do
      @credit_card = CreditCard.new('6011111111111117')
    end
    
    it 'should set the card type to Discover' do
      @credit_card.type?.should eql('Discover')
    end
    
    it 'should validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(true)
    end
    
  end
  
  
  
  context 'invalid Discover' do
    
    before :each do
      @credit_card = CreditCard.new('6011111111111118')
    end
    
    it 'should set the card type to Discover' do
      @credit_card.type?.should eql('Discover')
    end
    
    it 'should not validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(false)
    end
    
  end
  
  
  
  context 'valid MasterCard' do
    
    before :each do
      @credit_card = CreditCard.new('5105105105105100')
    end
    
    it 'should set the card type to MasterCard' do
      @credit_card.type?.should eql('MasterCard')
    end
    
    it 'should validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(true)
    end
    
  end
  
  
  
  context 'invalid MasterCard' do
    
    before :each do
      @credit_card = CreditCard.new('5105105105105106')
    end
    
    it 'should set the card type to MasterCard' do
      @credit_card.type?.should eql('MasterCard')
    end
    
    it 'should not validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(false)
    end
    
  end
  
  
  
  context 'valid Visa' do
    
    before :each do
      @credit_card = CreditCard.new('4111111111111111')
    end
    
    it 'should set the card type to Visa' do
      @credit_card.type?.should eql('Visa')
    end
    
    it 'should validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(true)
    end
    
  end
  
  
  
  context 'invalid Visa' do
    
    before :each do
      @credit_card = CreditCard.new('4111111111111')
    end
    
    it 'should set the card type to Visa' do
      @credit_card.type?.should eql('Visa')
    end
    
    it 'should not validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(false)
    end
    
  end
  
  
  
  context 'invalid unknown card' do
    
    before :each do
      @credit_card = CreditCard.new('9111111111111111')
    end
    
    it 'should set the card type to Unknown' do
      @credit_card.type?.should eql('Unknown')
    end
    
    it 'should not validate using the Luhn algorithm' do
      @credit_card.valid?.should eql(false)
    end
    
  end
  
end