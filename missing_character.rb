def carac_faltando(frase)
  caract_ausentes = []

  ('a'..'z').each do |letra|
    if !frase.downcase.include?(letra)
      caract_ausentes << letra
    end
  end

  return caract_ausentes
end

frase = "welcome to geeksforgeeks"
caract_ausentes = carac_faltando(frase)
puts "#{caract_ausentes.join(',')}"
