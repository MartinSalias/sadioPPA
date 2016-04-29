require 'sinatra'
require_relative './lib/motor.rb'

enable :sessions

get '/' do
  motor = Motor.new "backlog"
  @resultado = ""
  session[:motor] = motor
  erb :portada
end

post '/intento' do
  motor = session[:motor]
  @letra = params[:letra]
  motor.intentar @letra
  @vidas = motor.vidas
  @display = motor.display
  erb :portada
end
