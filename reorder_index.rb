def reorder(arr, index)
  n = arr.length
  result = [0] * n

  # Reordenar os elementos de acordo com os índices fornecidos
  n.times do |i|
    result[index[i]] = arr[i]
  end

  # Copiar o resultado de volta para o array original
  n.times do |i|
    arr[i] = result[i]
  end

  n.times do |i|
    index[i] = i
  end
end

if __FILE__ == $0
  arr = [50, 40, 70, 60, 90]
  index = [3, 0, 4, 1, 2]

  reorder(arr, index)

  puts "Reordered array is:"
  puts arr.map(&:to_s).join(" ")

  puts "Index order is:"
  puts index.map(&:to_s).join(" ")
end
