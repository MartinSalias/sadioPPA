class Motor

  def initialize palabra_secreta
    @palabra = palabra_secreta.upcase
    @display = "_" * @palabra.length
    @vidas = 6
  end

  def intentar letra
    letra.upcase!
    existe = @palabra.include? letra

    if existe
      @palabra.split("").each_with_index do |caracter,pos|
        if caracter == letra
          @display[pos] = letra
        end
      end
    else
      @vidas -= 1
    end

    return existe
  end

  def display
    @display.split("").join(" ")
  end

  def vidas
    @vidas
  end
end
