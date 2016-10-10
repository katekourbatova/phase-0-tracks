# Encrypt method
# Start with index 0
# While the index of the letter is less than the length of the string
# - change the letter to the next letter in the alphabet
# - increase the index by 1
# If the character is a space, make no change.


# Decrypt method
# Start with index 0
# While the index of the letter is less than the length of the string
# - change the letter to the previous letter in the alphabet using backwards method
# - increase the index by 1
# If the character is a space, make no change.

# Backwards method
# Create alphabet string
# Define a method for finding previous letter
# - find the index in the alphabet string of a given letter
# - decrease the index by 1
# - find the letter corresponding to the new index

# Driver code
# Ask user whether they want to decrypt or encrypt
# If encrypt
# - ask for string
# - encrypt string
# - print encrypted result
# If decrypt
# - ask for string
# - decrypt string
# - print decrypted result
# if something else, write a message for user.

def encrypt(x)
  i = 0
  while i<x.length
    if x[i] == " "
      i +=1
    elsif x[i] == "z"
      x[i] = "a"
      i += 1
    else
      x[i] = x[i].next!
      i += 1
    end
  end
  return x
end

def backwards(x)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i2 = alphabet.index(x)
  i2 -= 1
  x = alphabet[i2]
end

def decrypt(x)
  i = 0
  while i < x.length
    if x[i] == " "
      i +=1
    else
      x[i] = backwards(x[i])
      i += 1
    end
  end
  return x
end

puts "Would you like to decrypt or encrypt a password? Please type 'decrypt' or 'encrypt'."
user_preference = gets.chomp.downcase

if user_preference == "encrypt"
  puts "Please give us a word to encrypt."
  string = gets.chomp
  puts encrypt(string)
elsif user_preference == "decrypt"
  puts "Please give us a word to decrypt."
  string = gets.chomp
  puts decrypt(string)
else
  puts "I guess you didn't need to use the password encryptor/decryptor. Goodbye."
end    


# print decrypt(encrypt("swordfish"))
# This works because encrypt returns the encrypted form of "swordfish",
# and then decrypt takes the encryption and decrypts it again back to "swordfish."
# to make sure that worked, I specified the return value for the methods.