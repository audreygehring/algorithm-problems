def compression(str)
  index = 0
  count = 1
  compressed_string = ""

  while index < str.length
    if str[index] == str[index + 1]
      count += 1
    else
      compressed_string += "#{str[index]}" + "#{count}"
      count = 1
    end
    index += 1
  end
  return compressed_string
end

puts compression('aabcccccaaa')
