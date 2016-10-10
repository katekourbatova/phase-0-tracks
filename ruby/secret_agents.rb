# Encrypt method
# Start with index 0
# While the index of the letter is less than the length of the string
# - change the letter to the next letter in the alphabet
# - increase the index by 1
# If the character is a space, make no change.


# Decrypt method

# Create alphabet string
# Define a method for finding previous letter
# - find the index in the alphabet string of a given letter
# - decrease the index by 1
# - find the letter corresponding to the new index

# Start with index 0
# While the index of the letter is less than the length of the string
# - change the letter to the previous letter in the alphabet
# - increase the index by 1
# If the character is a space, make no change.


puts "Please give us a word to encrypt."
string = gets.chomp

def encrypt(string)
  i = 0
  while i<string.length
    if string[i] == " "
      i +=1
    else
      string[i] = string[i].next!
      i += 1
    end
  end
end

encrypt(string)
puts string