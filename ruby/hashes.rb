# Pseudocode for interior designer entering details of a client

# Create empty hash
client_details = {}
# Ask for client's name
puts "What is the client's name?"
# - Enter into hash
client_details[:name] = gets.chomp
# Ask for client's age
puts "What is the client's age? Please enter a number only."
# - Convert to integer
# - Enter into hash
client_details[:age] = gets.chomp.to_i
# Ask for client's number of children
puts "How many children does the client have? Please enter a number only."
# - Convert to integer
# - Enter into hash
client_details[:n_children] = gets.chomp.to_i
# Ask for client's decor theme
puts "What decor theme would the client like to have?"
# - Enter into hash
client_details[:decor_theme] = gets.chomp
# Ask for client's number of rooms to be decorated
puts "How many rooms would the client like decorated?"
# - Convert to integer
# - Enter into hash
client_details[:n_rooms] = gets.chomp.to_i
# Ask whether client has pets
puts "Does the client have pets? Please enter yes or no."
# - Store answer
pets = gets.chomp.downcase
# - Convert to boolean, enter into hash
def pets_into_boolean(pets)
  if pets == "yes"
    pets = true
  elsif pets == "no"
    pets = false
  end
end
client_details[:pets] = pets_into_boolean(pets)

# Print hash to screen
p client_details
# Ask user: If you need to update an entry, please enter its key now.
#   If not, please enter "none".
puts "If you need to update an entry, please enter its key now."
puts "Possible keys are :name, :age, :n_children, :decor_theme, :n_rooms, or :pets."
puts "Otherwise, please type 'none'."
update_key = gets.chomp.downcase
# - If the user entered a key, ask for a new value
if (update_key == ":name") || (update_key == ":age") || (update_key == ":n_children") || (update_key == ":decor_theme") || (update_key == ":n_rooms") || (update_key == ":pets")
  puts "What new value would you like me to put in for #{update_key}?"
  update_value = gets.chomp

# - Enter value into hash, possibly convert to appropriate data type

  if (update_key == ":name") || (update_key == ":decor_theme")
    client_details[update_key] = update_value
  elsif (update_key == ":age") || (update_key == ":n_children") || (update_key == ":n_rooms")
    client_details[update_key] = update_value.to_i
  elsif update_key == ":pets"
    client_details[:pets] = pets_into_boolean(update_value)
  end
  
  puts "Here is the updated data we have about your client."    

else
  puts "OK, here is the current data we have about your client."
end

# Print hash again
p client_details
#exit
abort "Thank you!"