class SecretWordGame
  attr_reader :you_won, :you_lost, :reveal_word_str, :n_guesses_left, :secret_word_str

  def initialize
    @prev_guesses = []
    @you_won = false
    @you_lost = false
    @n_guesses_left = nil
    @secret_word_str = ""
    @reveal_word_str = ""
  end

  def set_secret_word(word)
    @secret_word_str = word
    @n_guesses_left = word.length + 3
    @reveal_word_str = ("_" * word.length)
  end

  def check_guess(guess)
    if !(@prev_guesses.include? guess)
      @prev_guesses << guess
      @n_guesses_left -= 1
    end

    if guess == @secret_word_str
      @reveal_word_str = @secret_word_str
      @you_won = true
    
    #if the guess is 1 char long, and the secret word includes the guess
    elsif (@secret_word_str.include? guess) && (guess.length == 1)
      #for each index in secret word, check if character is equal to guess, adjust revealed word string as necessary
      @secret_word_str.chars.each_index do |charindex|
        if @secret_word_str[charindex] == guess
          @reveal_word_str[charindex] = guess
        end
      end
    end

    if !(@reveal_word_str.include? "_")
      @you_won = true
    end

    if @n_guesses_left == 0
      @you_lost = true
    end
  end
end

#Driver code:

# puts "Welcome to our word guessing game!"
# game = SecretWordGame.new

# puts "Please set a word you'd like your friend to guess."
# the_word = gets.chomp

# game.set_secret_word(the_word)

# puts "Now invite a friend to guess your word."

# puts "Hello, new player! Your friend has set a secret word for you to guess."


# until game.you_won || game.you_lost
#   puts "Please type in a letter you think is in the word, or the whole word if you think you know it. You have #{game.n_guesses_left} guesses."
#   guess = gets.chomp
#   game.check_guess(guess)
#   puts "The word so far: #{game.reveal_word_str}"
# end

# if game.you_won
#   puts "Way to go! You won with #{game.n_guesses_left} guesses left."
# elsif game.you_lost
#   puts "You lost.... better luck next time."
# end




# The class is WordGame.
# The user should be able to access (read and write) the previous guesses (array) attribute
# The user should be able to read the ‘you won’ attribute, and ‘you lost’ attribute

# The initialize method
# Empty previous guesses array
# You lost is false
# You won is false
# Guesses left is nil
# Secret word string is empty
# Revealed word string is empty

# The secret_word method
# Set number of allowed guesses to 3 + the length of the word
# Revealed word string is equal in length to word string, but has underscores only

# The check_guess method
# store guess in the guess array
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