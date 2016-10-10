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


# puts "Please give us a word to encrypt."
# string = gets.chomp

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

# encrypt(string)
# puts string

# puts "Please give us something to decrypt."
# encrypted_str = gets.chomp


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

# decrypt(encrypted_str)
# puts encrypted_str


print decrypt(encrypt("swordfish"))
# This works because encrypt returns the encrypted form of "swordfish",
# and then decrypt takes the encryption and decrypts it again back to "swordfish."
# to make sure that worked, I specified the return value for the methods.