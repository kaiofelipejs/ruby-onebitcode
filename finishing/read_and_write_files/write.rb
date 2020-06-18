File.open('shopping_list.txt', 'a') do |line| # passando esse 'a' no parametro nós não sobreescrevemos e adicionamos ao final.
  line.puts('arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end