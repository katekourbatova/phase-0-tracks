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
def add_item (grocery_hash, g_item, quantity=1)
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

def update_quantity (grocery_hash, g_item, quantity)
  grocery_hash[g_item] = quantity
  print_list(grocery_hash)
end

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

kate_list = create_list("carrots apples lettuce", 2)
add_item(kate_list, "banana", 3)
delete_item(kate_list, "apples")
update_quantity(kate_list, "banana", 1)
print_list(kate_list)