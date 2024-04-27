def common_characters(strings)
    common_chars = strings[0].chars.uniq

  strings[1..-1].each do |str|
    common_chars &= str.chars.uniq
  end

  common_chars.sort
end

strings = [
  'geeksforgeeks',
  'gemkstones',
  'acknowledges',
  'aguelikes',
]

result = common_characters(strings)
puts result.join(' ')  
