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

  it "Si la palabra es AGUA y pruebo la A tengo que tener A _ _ A" do
    juego = Motor.new "AGUA"
    juego.intentar("A")
    juego.display.should == "A _ _ A"
  end

end
