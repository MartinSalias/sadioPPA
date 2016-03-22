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

  it "Si la palabra es AGUA y pruebo la A y la G tengo que tener A G _ A" do
    juego = Motor.new "AGUA"
    juego.intentar("A")
    juego.intentar("G")
    juego.display.should == "A G _ A"
  end

  it "Si la palabra es AGUA y pruebo 6 veces la Z, perdi" do
    juego = Motor.new "AGUA"
    6.times { juego.intentar("Z") }
    juego.vidas.should == 0
  end

  it "Si la palabra es AGUA y pruebo 5 veces la Z, me queda una vida" do
    juego = Motor.new "AGUA"
    5.times { juego.intentar("Z") }
    juego.vidas.should == 1
  end

end
