require 'sinatra'
require_relative 'coin_changer.rb'

get '/' do
  erb :start
end

post '/start' do
  cents = params[:cents]
  redirect 'change?cents=' + cents
end

get '/change' do
  cents = params[:cents].to_i
  cents = coin(cents)
  erb :change, locals: {cents: cents}
end
