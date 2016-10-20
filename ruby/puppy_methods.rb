class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    puts human_years*7
  end

  def bite(item)
    puts "I bit the #{item}! It was great!"
  end


  def initialize
    print "Initializing new puppy instance..."
  end

end

Spot = Puppy.new
Spot.fetch("ball")
Spot.speak(3)
Spot.roll_over
Spot.dog_years(2.5)
Spot.bite("flute")