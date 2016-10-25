# Old standalone module
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words.upcase + "!!! :D :D"
#   end
# end

# p Shout.yell_angrily("I am unhappy")
# p Shout.yell_happily("I am happy")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
    puts words.upcase + "!!! :D :D"
  end
end

class Toddler
  include Shout
end

class Trump
  include Shout
end

toddler_amy = Toddler.new
toddler_amy.yell_happily("There's a bird outside")

the_donald = Trump.new
the_donald.yell_angrily("The election is rigged")