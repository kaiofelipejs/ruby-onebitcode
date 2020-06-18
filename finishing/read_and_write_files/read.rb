puts '-- Lista de Compras --'

file = File.open('shopping_list.txt')

file.each do |line|
  puts line
end