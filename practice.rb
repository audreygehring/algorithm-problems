def reverse_array(array)
  store = ""
  array.each do |item|
    store = item
  end
end


def prime?(number)
  start = 2
  while start < number
    start += 1
    if start % number == 0
      true
    else
      false
    end
  end
end
