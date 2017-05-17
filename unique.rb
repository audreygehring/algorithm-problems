def unique(str)
  arr = str.split('')
  counts = Hash.new(0)

  if arr.length > 1
    arr.each do |char|
        counts[char] += 1
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
