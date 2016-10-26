class SecretWordGame
  attr_reader :you_won, :you_lost
  attr_accessor :prev_guesses

  def initialize
    # @prev_guesses = {}
    # @you_won = false
    # @you_lost = false
    # @n_allowed_guesses = nil
    # @secret_word_str = ""
    # @reveal_word_str = ""
  end

  def secret_word(word)
    # @secret_word_str = word
    # @n_allowed_guesses = word.length + 5
    # @reveal_word_str = ???
  end

  def check_guess(guess)

  end

end

# The class is WordGame.
# The user should be able to access (read and write) the previous guesses (hash) attribute
# The user should be able to read the ‘you won’ attribute, and ‘you lost’ attribute

# The initialize method
# Empty previous guesses hash
# You lost is false
# You won is false
# Allowed guesses is nil
# Secret word string is empty
# Secret word array is empty
# Revealed word array is empty

# The secret_word method
# Breaks word up into array of characters
# Set number of allowed guesses to 5 + the length of the word
# Revealed word array is equal in length to word array, but has underscores only

# The check_guess method
# UNTIL guess hash length is equal to number of allowed guesses
# store guess in the guess hash
# check if the string entered corresponds to the secret word string 
#   if guessed correctly, you_won is true
# if you_won is false and user entered a 1-character string
#   check if the character appears in the secret word array
#     if guessed correctly, update revealed word array to show the characters wherever they appear

# Driver code
# Describe the game
# Ask user 1 for secret word
# Call secret_word method

# UNTIL game is either won or lost
# - tell user to guess a letter or the whole word
# - get input
# - call check_guess method
# - IF game isn't over and there are 5 guesses or fewer left, tell user how many guesses are left.
# IF user won, congratulate user
# IF user lost, taunt user