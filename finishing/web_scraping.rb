require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)

https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')

# Exemplo para pegar o titulo e link do ultimo post do blog
last_post = doc.at('h3 a')
# puts last_post.content
# puts last_post['href']

# Exemplo para pegar o titulo e link de todos os posts da página
doc.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end