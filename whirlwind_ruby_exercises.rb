sam = [
"crepes",
"scrambled eggs",
"butter nut squash",
"burritos",
"tacos",
"salad"
]

sally = [
"English",
"Spanish",
"French",
"Italian",
"Russian",
"Chinese"
]

if sam.length > 10 && sally.length > 5
  puts "date night"
end

if sam.include?("crepes") && sally.include?("French")
  puts "wedding bells"
end


array_of_hashes = []
5.times do
  puts "Please enter your first name"
  first_name = gets.chomp
  puts "Please enter your last name"
  last_name = gets.chomp
  puts "Please enter your email"
  email = gets.chomp

  my_hash = {
    :first_name => first_name, 
    :last_name => last_name,
    :email => email,
    :id => create_random_number
  }

  array_of_hashes << my_hash
end

p array_of_hashes