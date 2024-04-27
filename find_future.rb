require 'date'


def parse_date(date_str)
  Date.parse(date_str, '%d/%m/%Y')
end

def find_next_date(date_str, dates_arr)

  query_date = parse_date(date_str) #converter a string date_str no formato '%d/%m/%Y' em um objeto Date.

  sorted_dates = dates_arr.map { |date_str| parse_date(date_str) }.sort

  next_date = sorted_dates.find { |date| date >= query_date }

  return next_date.nil? ? "-1" : next_date.strftime('%d/%m/%Y')
end

dates_array = ["12/05/2024", "15/05/2024", "20/05/2024", "25/05/2024"]

queries = ["16/05/2024", "23/05/2024", "30/05/2024"]

queries.each do |query|
  puts "Próxima data após #{query}: #{find_next_date(query, dates_array)}"
end
