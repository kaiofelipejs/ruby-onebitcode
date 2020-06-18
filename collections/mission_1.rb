numbers = []

print 'Digite o primeiro número: '
number1 = gets.chomp.to_i
numbers.push(number1)

print 'Digite o segundo número: '
number2 = gets.chomp.to_i
numbers.push(number2)


print 'Digite o terceiro número: '
number3 = gets.chomp.to_i
numbers.push(number3)

new_array = numbers.map do |number|
               number ** 2
            end

puts new_array