#GPS 2.2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza", quantity=1)
# steps: 
  # 1. split up the string items into array (for all the items you input)
  # 2. create a hash (list)
  # 3. push array items into keys of the hash (+ set default quantity for each)
  # 4. print the list to the console [can you use one of your other methods here? print_list]
# output: hash
def create_list (g_items, quantity=1)
  grocery_array = g_items.split
  grocery_hash = {}
  grocery_array.each do |item|
    grocery_hash[item] = quantity
  end
  print_list(grocery_hash)
end

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: 
# 1. add key value pair to the hash (item+quantity)
# 2. print the updated hash (p)
# output: updated hash
def add_or_update_item (grocery_hash, g_item, quantity=1)
  grocery_hash[g_item] = quantity
  print_list(grocery_hash)
end

# Method to remove an item from the list
# input: hash, item name
# steps: 
# 1. delete the specific item/key from the hash
# 2. print the updated hash (p)
# output: updated hash

def delete_item (grocery_hash, g_item)
  grocery_hash.delete(g_item)
  print_list(grocery_hash)
end

# Method to update the quantity of an item
# input: hash, item name, updated quantity
# steps:
# 1. assign a new quantity/value to an item/key in the hash
# 2. print the updated hash (p)
# output: updated hash

#Redundant method -- included in add_item
# def update_quantity (grocery_hash, g_item, quantity)
#   grocery_hash[g_item] = quantity
#   print_list(grocery_hash)
# end

# Method to print a list and make it look pretty
# input: hash
# steps:
# 1. print out each value pair on separate lines
# output: a set of strings

def print_list(grocery_hash)
  puts "This is your grocery list:"
  grocery_hash.each do |g_item, value|
  puts "#{g_item} : #{value}"
  end
end

# First test
# kate_list = create_list("carrots apples lettuce", 2)
# add_item(kate_list, "banana", 3)
# delete_item(kate_list, "apples")
# update_quantity(kate_list, "banana", 1)
# print_list(kate_list)

# Release 2: new list
rinas_list = create_list("Lemonade", 2)
add_or_update_item(rinas_list, "Tomatoes", 3)
add_or_update_item(rinas_list, "Onions", 1)
add_or_update_item(rinas_list, "Ice Cream", 4)
delete_item(rinas_list, "Lemonade")
add_or_update_item(rinas_list, "Ice Cream", 1)
print_list(rinas_list)


#Reflection

# What did you learn about pseudocode from working on this challenge?
# I liked the structure that using input/steps/output provided. It helped organize our thoughts as we worked on writing the methods.

# What are the tradeoffs of using arrays and hashes for this challenge?
# It's easy to break up a string into an array, but hashes can store more data, such as quantities for a grocery list.

# What does a method return?
# A method returns the last thing that was evaluated within it.

# What kind of things can you pass into methods as arguments?
# You can pass any data type, and you can pass global variables.

# How can you pass information between methods?
# In order to take data from one method and pass it to another, it should be stored in a variable that the other method can access.
# Or you can also run one method inside another, and then it has access to local variables within that method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# We got more practice passing information from one method to another, and using methods and driver code.
# I need more practice on some of these methods (especially passing information between strings, arrays, and hashes).
# I'm also not sure if we used the fastest way possible to take information from a string and feed it into the keys of a hash.