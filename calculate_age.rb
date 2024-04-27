require 'date'

def find_date(date_str, date_td_str)
  date = Date.parse(date_str, '%d/%m/%Y') # Convertendo a string de data em um objeto Date
  date_td = Date.parse(date_td_str, '%d/%m/%Y') # Convertendo a string de data em um objeto Date

  # Calculando a diferença em dias entre as duas datas
  diff_days = (date_td - date).to_i

  if diff_days > 0
    puts "A data #{date_td_str} é #{diff_days} dias após #{date_str}."
  elsif diff_days < 0
    puts "A data #{date_td_str} é #{-diff_days} dias antes de #{date_str}."
  else
    puts "As datas são iguais."
  end
end

find_date("04/11/1986", "27/04/2024")
