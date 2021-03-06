def one_away(str1, str2)
  if str1.length == str2.length
    return replace(str1, str2)
  elsif str1.length + 1 == str2.length || str1.length - 1 == str2.length
    return insert(str1, str2)
  else
    return false
  end
end

def replace(str1, str2)
  difference = false
  for i in 0..str1.length - 1
    if str1[i] != str2[i]
      if difference
        return false
      else
        difference = true
      end
    end
  end
  return difference
end

def insert(str1, str2)
  index1 = 0
  index2 = 0

  while index2 < str2.length && index1 < str1.length
    if str1[index1] != str2[index2]
      if index1 != index2
        return false
      end
      index2 += 1
    else
      index1 += 1
      index2 += 1
    end
    return true
  end
end

puts one_away("pale", "ple")
puts one_away("pales", "pale")
puts one_away("pale", "bale")
puts one_away("pale", "bake")
