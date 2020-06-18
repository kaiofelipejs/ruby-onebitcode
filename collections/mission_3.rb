# Missão 3
# Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.

numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}
bigger = 0

numbers.each do |key, value|
   if value > bigger
      bigger = value
   end
end

numbers.select do |key, value|
   if value === bigger
      puts "#{key} #{value}"
   end
end