# Method that takes a real name and creates a fake name

# Input: Real name string
# Steps:
# 1. Split the string into words, make that an array
# 2. Reverse the order of the array
# 3. Join the array back into a string, make it all lowercase.
# 4. Split the string into characters.
# 5. Create 2 arrays, of vowels and consonants
# 6. Iterate through the array of letters
#  - If character is a space, leave as is
#  - If character is in vowel array, overwrite with next character in vowel array
#  - If character is in consonant array, overwrite with next character in consonant array

# 7. Join the character array back into a string, capitalize it.
# Output: Fake name string

def create_alias(real_name)

  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j",
  "k", "l", "m", "n", "p", "q", "r", "s", "t",
  "v", "w", "x", "y", "z"]

  # takes the real name, splits into words, reverses the order, joins into string again, and lowercases
  reversed_lowcase_str = real_name.split(" ").reverse.join(" ").downcase
  name_char_array = reversed_lowcase_str.chars
  fake_name_char_arr = name_char_array.map! do |letter|
    if letter == " "
     letter
    elsif letter == "u"
      letter = "a"
    elsif letter == "z"
      letter = "b"
    elsif vowels.include?(letter)
      letter = vowels[vowels.index(letter) + 1] # assigns the letter to be the next vowel
    elsif consonants.include?(letter)
      letter = consonants[consonants.index(letter) + 1]
    end
  end

# rejoins the character array into one string, splits it into word array,
# capitalizes each word, rejoins into string
  fake_name = fake_name_char_arr.join("").split(" ").map!{|name| name.capitalize}.join(" ")
end



#Driver code for user interface and storing aliases

fake_names = {}
user_request = nil
until user_request == "quit"
  puts "Please enter a name if you'd like to receive a fake alias. If not, please enter 'quit'."
  user_request = gets.chomp
  if user_request != "quit"
    puts create_alias(user_request)
    fake_names[user_request] = create_alias(user_request)
  else
    fake_names.each {|real, fake| puts "#{fake} is actually #{real}."}
  end
end
