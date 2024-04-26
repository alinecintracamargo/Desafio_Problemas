
frase = "#GeeKs01fOr@gEEks07"

contador_minusculo = 0
contador_maiusculo = 0
contador_especial = 0
contador_numerico = 0

frase.each_char do |caractere|
  if caractere.downcase == caractere && caractere.match?(/[[:alpha:]]/) #corresponderá a qualquer caractere alfabético, seja ele minúsculo ou maiúsculo.
    contador_minusculo += 1
  elsif caractere.upcase == caractere && caractere.match?(/[[:alpha:]]/)
    contador_maiusculo += 1
  elsif caractere.match(/[[:punct:]]/)  #corresponde a qualquer caractere especial de pontuação
    contador_especial += 1
  elsif caractere.match(/\d/)
    contador_numerico += 1
  end
end

puts "Quantidade de caracteres minúsculos: #{contador_minusculo}"
puts "Quantidade de caracteres maiúsculos: #{contador_maiusculo}"
puts "Quantidade de caracteres especiais: #{contador_especial}"
puts "Quantidade de caracteres numéricos: #{contador_numerico}"
