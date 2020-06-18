class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end

class Teclado < Instrumento
end

class Lapis < Instrumento
  def escrever
    puts 'Escrevendo à Lápis'
  end
end

class Caneta < Instrumento
  def escrever
    puts 'Escrevendo à Caneta'
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts "Lapis: "
lapis.escrever
puts "caneta: " 
caneta.escrever
puts "teclado: "
teclado.escrever

# instrumentos = [Lapis.new, Caneta.new]
# # Chamamos o método escrever pra qualquer instrumento
# Instrumentos.each do |instrumento|
#   Instrumento.escrever
# end