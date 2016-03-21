class Motor

  def initialize palabra_secreta
    @palabra = palabra_secreta.upcase
  end

  def intentar letra
    return @palabra.include? letra
  end

end
