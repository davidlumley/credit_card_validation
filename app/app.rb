require   'rubygems'
require   'sinatra'
require   'lib/credit_card.rb'

module CreditCardValidation
  class App < Sinatra::Base
    
    get '/' do
      erb :index
    end
    
    post '/validate' do
      card_numbers = params[:card_numbers]
      @validation_status = Array.new
      card_numbers.each do |number|
        credit_card = CreditCard.new(number)
        @validation_status.push credit_card.validation_status
      end
      erb :validation_status
    end
  end
end