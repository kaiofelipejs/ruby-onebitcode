def divider
  puts ""
  puts '========== Dividindo os exemplos ==============='
  puts ""
end

# Block é como uma função anonima. 
# É definido entre do..end ou colchetes e pode receber parâmetros, da mesma forma que os métodos

# Exemplo simples com times:
5.times { puts 'Exec the block' }

divider

# Block recebendo parâmetros (each utiliza um block também)
sum = 0
numbers = [5, 10, 15]
numbers.each { |number| sum += number }
puts sum

divider

# Block de multiplas linhas
foo = { 2 => 3, 4 => 5}
foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end

divider

# Criando um método que recebe um block e executa. Essa é a estrutura do each, times e de varias libs...
def method_foo
  yield
  yield
end

method_foo { puts "Metho exec the block" }

divider

# O bloco pode ser passado opcionalmente para o método:
def foo_opcional
  if block_given?
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

foo_opcional
foo_opcional { puts "Com parâmetro block "} 

divider

# É possível passar block como parametro de outras formas também. É importante saber que só pode passar um block por parametro.
# Nese caso, é preciso usar o "&" na frente da palavra no parametro
# O que está acontecendo é como se o "block.call" pegar o `puts "Hi, #{@name}"` e colocasse onde está "block.call"

def bar(name, &block)
  @name = name
  block.call
end

bar('Kaio') { puts "Hi, #{@name}" }

divider

# Block que ocupa várias linhas como parametro
def baz(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }

baz(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
