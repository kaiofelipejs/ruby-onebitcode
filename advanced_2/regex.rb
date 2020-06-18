# Regex são notações para representar padrões em strings. Servem para validar entradas de dados ou fazer busca e extração de infos em texto.

# Operador =~ retona o offset, a distancia entre o começo da string até o local onde ocorre o 'casamento' do padrão especificado na exp.
/by/ =~ 'ruby'

# A mesma comparação também pode ser realizada iniciando pela string
'ruby' =~ /by/

# Quando não ocorre o casamento (não encontra a expressão) o retorno é nil
'rails' =~ /ruby/

# ====== Método match =======
# retorna um objeto tipo MatchData, contendo todos os resultados do casamento de padrão
phrase = "Hellow, how are you?"
match_data = /how/.match(phrase)

# - Em um objeto do tipo MatchData você pode, por exemplo, acessar o que vem antes do casamento através do método pre_match
match_data.pre_match

# Ou acessar o que vem depois do casamento com post_match
match_data.post_match

# ====== Caracteres especiais =======
# Os símbolos (, ), [, ], {, }, ., ?, +, *,  são metacharacters. Eles possuem um significado quando utilizados em expressões regulares.
# Caso o padrão que você procura seja um metacharacter, utilize o símbolo de escape \ para realizar a busca
/\?/.match('Tudo bem?')

# ====== Character class =======
# É uma lista que informa quais caracteres devem aparecer em um ponto do casamento.

# Uma character class é delimitada por colchetes [, ]
puts /[t]exto/.match('texto começando com t')

# Você pode especificar um range com o símbolo –
/[1-5]/.match('123') # Assim, é procurado um padrão onde o primeiro número pode ser 1, 2, 3, 4 ou 5

#  Note que o casamento também ocorre em uma string que começa com o número 2
/[1-5]/.match('223')

# O range pode ser utilizado para letras
/[a-z]/.match('Oi')

# Existem alguns metacharacters que se comportam como character classes
# Por exemplo, o metacharacter \d verifica o padrão [0-9]
/A\d/.match('A4')

# ====== Repetition =======
# É possível definir a repetição de um mesmo padrão, evitando escrever a mesma coisa diversas vezes.

# Por exemplo, verifique o casamento de padrão em uma etiqueta que começa com uma letra e 3 números.
"A343".match(/[A-Z]\d{3}/) # Ao em vez de digitar \d\d\d pode escrever \d{3}

# Verifique se uma letra foi escrita mantendo o padrão de repetição entre três ou mais vezes
puts "BBB AAAA".match(/A{3,}/) # A vírgula em {3, } informa que a repetição pode ocorrer 3 ou mais vezes

