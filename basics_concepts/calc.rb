print 'Digite o primeiro número inteiro: '
number1 = gets.chomp.to_i

print 'Digite o segundo número inteiro: '
number2 = gets.chomp.to_i

addition = number1 + number2
subtraction = number1 - number2
multiplication = number1 * number2
division = number1 / number2

puts "A adição dos dois números é #{addition}"
puts "A subtração dos dois números é #{subtraction}"
puts "A multiplicação dos dois números é #{multiplication}"
puts "A divisão dos dois números é #{division}"
