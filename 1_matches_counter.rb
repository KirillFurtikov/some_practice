a = [[4, 4, 19], nil, [32, 41], 4, 65]
b = [234, 0, 21, [54], 4, [4, 4, 4, 4]]

unique = (a + b).flatten.compact

entries = unique.each_with_object(Hash.new(0)) { |count, hash| hash[count] += 1 }

puts entries
