require_relative '../lib/motor.rb'

describe "Motor de Reglas del Ahorcado" do

  it "should be valid to try A if the word is AGUA" do
    juego = Motor.new "AGUA"
    juego.intentar("A").should == true
  end

  it "J es invalida para la palabra AGUA" do
    juego = Motor.new "AGUA"
    juego.intentar("J").should == false
  end

end
