# Add all items together

# Method 1
items = [2,3,4,3,22]

p items[0] + items[1] + items[2] + items[3] + items[4]


# Method 2
items = [2,3,4,3,22]

index = 0
add = 0

number_of_items = items.length

number_of_items.times do
  add = add + items[index]
  index = index + 1
end

p add


# Method 3
items = [2,3,4,3,22]

sum = 0
i = 0

items.length.times do
  sum += items[i]
  i += 1
end

p sum


# Method 4
items = [2,3,4,3,22]

sum = 0

items.each do |item|
  sum = sum + item      # or sum += item
end