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