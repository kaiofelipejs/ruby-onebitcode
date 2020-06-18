def divider
  puts ""
  puts '========== Dividindo os exemplos ==============='
  puts ""
end

# Lambdas são semelhante aos blocks, mas podem ser salvas em variáveis
first_lambda = lambda { puts "My first lambda" }
first_lambda.call

divider

# Pode melhorar a sintaxe para: 
second_lambda = -> { puts "My second lambda" }
second_lambda.call

divider

# Pode receber parâmetros
example_lambda = -> (names){ names.each { |name| puts name } }

names = ['Kaio', 'Felipe', 'José']
example_lambda.call(names)

divider

# pode ter lambdas de multiplas linhas (neste caso, precisa escrever 'lambda'): 
my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)

divider

# pode passar um lambda como argumento para um método, igual os demais argumentos
# A diferença para o block, é que não precisa do "&" e pode passar vários
def foo(arg_lambda_1, arg_lambda_2)
  arg_lambda_1.call
  arg_lambda_2.call
end

arg_lambda_1 = -> { puts 'Argumento Lambda 1' }
arg_lambda_2 = -> { puts 'Argumento Lambda 2' }

foo(arg_lambda_1, arg_lambda_2)