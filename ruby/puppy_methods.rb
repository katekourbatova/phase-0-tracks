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

class Kitten
  def initialize
    puts "Initialize kitten"
  end
  def ignore(item)
    puts "I ignored your silly #{item}"
  end
  def catch(animal)
    puts "What should I do with this #{animal}" 
  end 
end

kittens = []

i=0
while i<50
  kittens << Kitten.new
  i +=1
end

kittens.each do |kitten|
  kitten.ignore("doll")
  kitten.catch("bird")
end