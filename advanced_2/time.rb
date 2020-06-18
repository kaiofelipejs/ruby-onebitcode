# O Ruby possui uma classe chamada Time para representar datas e horas

# Pegando a data e hora atual
time = Time.now
puts time

# Para o ano, usa year
puts time.year

# Para o mês, usa month
puts time.month

# Para o dia, usa day
puts time.day

# Para formatar datas usamos o strftime('%d/%m/%y'). Tem várias coisas nessa strftime, vale conferir a doc.
puts time.strftime('%d/%m/%y')

