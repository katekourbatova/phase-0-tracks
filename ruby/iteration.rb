# Release 0
# def define
#   puts "Not yet run"
#   yield(4, 6)
#   puts "I just ran it!!"
# end

# define {|par1, par2| puts par1 + par2  }

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