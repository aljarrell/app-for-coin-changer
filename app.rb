require 'sinatra'
require_relative 'coin_changer.rb'

get '/' do
  erb :start
end
