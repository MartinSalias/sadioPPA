require 'sinatra'
require_relative './lib/motor.rb'

get '/' do
  @@motor = Motor.new "backlog"
  @resultado = ""
  erb :portada
end

post '/intento' do
  @letra = params[:letra]
  if @@motor.intentar @letra
    @resultado = "CORRECTO!"
  else
    @resultado = "Letra iNNcorrecta"
  end
  erb :portada
end
