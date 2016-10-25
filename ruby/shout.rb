module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!!! :D :D"
  end
end

p Shout.yell_angrily("I am unhappy")
p Shout.yell_happily("I am happy")