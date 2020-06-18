# Self é uma variável especial que aponta para o objeto atual

class Foo
  def bar
    puts self 
  end
end

foo = Foo.new
puts foo
foo.bar
# Ele retorna os dois objetos apontando para o mesmo lugar na memória.
# Ou seja, ele representa a própria instância que o chamou.


# Nesse exemplo abaixo o self é outra coisa.
# Quando antes do método tem a palavra self, podemos chamar sem criar uma instância. Ou seja, é um método de classe, não de instância.

class Baz
  def self.example
    puts self
  end
end

Baz.example

# Também podemos utilizá-lo para referir a atributos do objeto atual
# Como self é a própria instancia, usando o self conseguimos acessar variaveis de instancia da classe.
# Tudo o que a instancia tem acesso, o self tem tambem

class Pen
  attr_accessor :color

  def pen_color
    puts "The color is #{self.color}"
  end
end

pen = Pen.new
pen.color = "red"
pen.pen_color
