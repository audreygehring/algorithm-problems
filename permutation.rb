def permutation(str1, str2)
  arr1 = str1.split('')
  arr2 = str2.split('')

  if arr1.sort == arr2.sort
    return true
  else
    return false
  end
end

puts permutation('aba', 'baa')
puts permutation('ddd', 'eee')
