def palindrome_perm(str)
  arr = str.split('')
  counts = Hash.new(0)

  arr.each do |char|
    counts[char] += 1
  end

  odds = 0
  counts.each do |char, count|
    if counts[char] % 2 != 0
      odds += 1
    end
  end
  if odds > 1
    return false
  else
    return true
  end
end

puts palindrome_perm("hhiilljjkke")
puts palindrome_perm("abababcc")
puts palindrome_perm("nhmih")
puts palindrome_perm("aba")
