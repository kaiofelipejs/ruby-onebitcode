def get_phone_number_from_text(text)
  puts /\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}/.match(text)
end

text = "Olá, tudo bem? Meu whats app é (48) 99876-5432"
get_phone_number_from_text(text)
