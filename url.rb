def urlify(str)
  return str.gsub(' ', '%20')
end

puts urlify('audrey gehring')
puts urlify('colt the dog')
