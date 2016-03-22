require 'sinatra'
require_relative './lib/motor.rb'

get '/' do
  @@motor = Motor.new "backlog"
  @resultado = ""
  erb :portada
end

post '/intento' do
  @letra = params[:letra]
  @@motor.intentar @letra
  @vidas = @@motor.vidas
  @display = @@motor.display
  erb :portada
end
