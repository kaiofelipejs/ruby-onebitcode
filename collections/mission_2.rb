collection = Hash.new

count = 1
3.times do
   print "Digite a chave do #{count}o elemento: "
   key = gets.chomp

   print "Digite o valor do #{count}o elemento: "
   value = gets.chomp
   count += 1
   
   collection[key] = value
   puts collection
end

collection.each do |key, value|
   puts "Uma das chaves é #{key} e o seu valor é #{value}"
end