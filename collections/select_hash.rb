hash = {
   0 => 'zero',
   1 => 'um',
   2 => 'dois',
   3 => 'três'
}

puts 'Selecionando keys com valor maior que 0'

selection_key = hash.select do |key, value|
   key > 0
end

puts selection_key