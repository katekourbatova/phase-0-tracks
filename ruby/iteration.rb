# Release 0
# def define
#   puts "Not yet run"
#   yield(4, 6)
#   puts "I just ran it!!"
# end

# define {|par1, par2| puts par1 + par2  }


#Release 1
pasta_ingredients = ["pasta", "marinara sauce", "bell pepper", "onion", "garlic", "tomato"]

guests_diet_restrictions = {
  "Amy" => "vegetarian",
  "Brandon" => "lactose intolerant",
  "Caroline" => "no eggs",
  "Daryl" => "no peanuts"
}


#iterate through pasta ingredients array
puts "Pasta ingredients before .each:"
print pasta_ingredients

pasta_ingredients.each do |ingredient|
  puts "#{ingredient} is delicious!"
end

puts "Pasta ingredients after .each:"
print pasta_ingredients


#iterate through guests' diet restriction hash
puts "Guests' diet restrictions before .each:"
print guests_diet_restrictions

guests_diet_restrictions.each do |person, restriction|
  puts "#{person} has this dietary restriction: #{restriction}"
end

puts "Guests' diet restrictions after .each:"
print guests_diet_restrictions


#use .map! to modify the pasta ingredients array
puts "Pasta ingredients before .map!"
print pasta_ingredients

pasta_ingredients.map! do |ingredient|
  "delicious #{ingredient}"
end

puts "Pasta ingredients after .map!"
print pasta_ingredients

#Release 2
meaningless_array = [1, 6, 234, 64, 25, 950, 35, 7, 3, 2, 233, 5, 6, 232, 98, 38]
meaningless_hash = {
  "a" => 1,
  "b" => 45,
  "c" => 9,
  "d" => 2556,
  "e" => 94,
  "f" => 340,
  "g" => 249,
  "h" => 294,
  "i" => 8,
  "j" => 24,
  "k" => 85
}

# Sample call for delete_if method, which iterates through the array, deleting any items that meet a certain condition
puts "meaningless_array before .delete_if"
print meaningless_array

meaningless_array.delete_if {|number| number < 7}

puts "meaningless_array after .delete_if"
print meaningless_array

# Sample call for delete_if method, which iterates through the hash, deleting any items that meet a certain condition
puts "meaningless_hash before .delete_if"
print meaningless_hash

meaningless_hash.delete_if {|letter, number| letter < "c"}

puts "meaningless_hash after .delete_if"
print meaningless_hash

# Sample call for keep_if method, which filters the array for only items that do satisfy a certain condition
puts "meaningless_array before .keep_if"
print meaningless_array

meaningless_array.keep_if {|number| number < 900}

puts "meaningless_array after .keep_if"
print meaningless_array

# Sample call for keep_if method, which filters the hash for only items that do satisfy a certain condition
puts "meaningless_hash before .keep_if"
print meaningless_hash

meaningless_hash.keep_if {|letter, number| number > 8}

puts "meaningless_hash after .keep_if"
print meaningless_hash

# Sample call for select! method, which filters the array for only items that do satisfy a certain condition, returns nil if no changes were made
puts "meaningless_array before select!"
print meaningless_array

meaningless_array.select! {|number| number <= 233}

puts "meaningless_array after select!"
print meaningless_array

# Sample call for select! method, which filters the hash for only items that do satisfy a certain condition, returns nil if no changes were made
puts "meaningless_hash before select!"
print meaningless_hash

meaningless_hash.select! {|letter, number| letter < "h" && letter > "c"}

puts "meaningless_hash after select!"
print meaningless_hash

# Sample call for drop_while method, which will remove items from the array until the condition in the block evaluates to false, then stops
puts "meaningless_array before drop_while"
print meaningless_array

new_array = meaningless_array.drop_while {|number| number > 7}

puts "meaningless_array after drop_while"
print meaningless_array
puts "new_array created using drop_while"
print new_array
