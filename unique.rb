def unique(str)
  arr = str.split('')
  counts = Hash.new

  if arr.length > 1
    arr.each do |char|
      if counts[char]
        counts[char] += 1
      else
        counts[char] = 1
      end
    end

    counts.each do |key, value|
      if value > 1
        return false
      else
        return true
      end
    end
  else
    return true
  end
end

puts unique('aabcdef')
puts unique('a')
puts unique('abcdefg')
puts unique('aa')
