test_data = [
  {
    id: 1,
    title: 'Development Environment',
    category: 'Engineering'
  },
  {
    id: 2,
    title: 'Benefits Summary',
    category: 'Accounting'
  },
  {
    id: 3,
    title: 'Benefits',
    category: 'Accounting'
  },
  {
  id: 4,
  title: 'Benefits',
  category: 'HR'
  },
  {
  id: 5,
  title: 'Benefits',
  category: 'HR'
  },
  {
    id: 6,
    title: 'Environment',
    category: 'Engineering'
  }
]


def most_popular(data)
  hash = Hash.new
  data.each do |file|
    if hash.include?(file[:category])
      hash[file[:category]] += 1
    else
      hash[file[:category]] = 1
    end
  end
  # would have to figure out edge case for more than one "winner"
  hash.sort_by { |k, v| v }
  return hash.keys.last
end

puts most_popular(test_data)
