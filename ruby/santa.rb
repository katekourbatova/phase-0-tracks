class Santa

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
      "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  #methods that change attributes
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end
    
end



example_genders = ["woman", "genderqueer", "man", "male", "female", "transfeminine", "transmasculine", "nonbinary", "enby", "prefer not to say", "n/a"]
example_ethnicities = ["Latino", "black", "Japanese-African", "Native American", "First Nations", "Inuit", "Celtic", "Slavic", "Arabic", "Armenian", "Dinka", "English", "Igbo", "Kurdish", "prefer not to say", "n/a"]

puts "How many Santas would you like to create?"
n_santas = gets.chomp.to_i
n_santas.times do |n|
  new_santa = Santa.new(example_genders.shuffle.first, example_ethnicities.shuffle.first)
  new_santa.age = (rand*141).to_i
  # rand gets a float less than 1 and greater than or equal to 0, to_i will truncate the float to an integer.
  puts "About this Santa:"
  puts "Age - #{new_santa.age}"
  puts "Gender - #{new_santa.gender}"
  puts "Ethnicity - #{new_santa.ethnicity}"
  puts "Reindeer, in order of preference -- #{new_santa.reindeer_ranking}"
  puts ""
end


# old driver code, for reference

# santas = []

# example_genders.length.times do |n|
#   santas << Santa.new(example_genders[n], example_ethnicities.shuffle.first)
#   #that paired each example gender with a random ethnicity from the ethnicity array
# end

# puts "Santa 0 is #{santas[0].age} years old."
# santas[0].celebrate_birthday
# puts "Now Santa 0 is #{santas[0].age} years old."

# puts "Santa 1 identifies as: #{santas[1].gender}"
# santas[1].gender = example_genders.shuffle.first
# puts "Santa 1 now identifies as: #{santas[1].gender}"

# puts "Santa 2's least favorite reindeer is: #{santas[2].reindeer_ranking.last}"
# santas[2].get_mad_at("Cupid")
# puts "Now Santa 2's least favorite reindeer is: #{santas[2].reindeer_ranking.last}"



# santa1 = Santa.new("female", "black")
# santa1.speak
# santa1.eat_milk_and_cookies("biscuit")

# prints all Santas and their variables
# santas.each do |new_santa|
#   p new_santa
#   puts " "
# end