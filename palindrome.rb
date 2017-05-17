def palindrome(str)
  arr = str.gsub(' ', '').split('')
  odds = 0
  hash = Hash.new(0)

  if arr.length > 2
    arr.each do |char|
      hash[char] += 1
    end
    hash.each do |k, v|
      if v % 2 != 0
        odds += 1
      end
    end

    if odds > 1
      return false
    else
      return true
    end
  else
    return true
  end
end

puts palindrome('tact coa')
puts palindrome('tace coa')
