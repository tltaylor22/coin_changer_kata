require 'sinatra'
require_relative 'coin_changer.rb'

erb :change_input, :locals => {:change_number => "", :amount => "", :message_one =>"", :number => ""}

end

post '/amount' do
	amount = params[:change_input]

results = change(amount)
# "#{results}, this is a valid ISBN."

erb :change_input, :locals => {:change_number => isbn_num, :amount => results, :message_one => " is a ", :number => " ISBN"}

end