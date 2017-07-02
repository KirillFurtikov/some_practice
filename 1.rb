a = [[4, 4, 19], nil, [32, 41], 4, 65]
b = [234, 0, 21, [54], 4, [4, 4, 4, 4]]

unique = (a + b).flatten!.compact!
entries = {}

unique.each do |unique_number|
  count = 0
  (a + b).flatten.select do |nummber|
    count += 1 if nummber == unique_number
  end
  entries[unique_number] = count
end

p entries
