puts "What is your name?"
name = gets.chomp
puts "How old are you? Please enter a number in years."
age = gets.chomp.to_i
puts "What year were you born? Please enter a number."
yearBorn = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? Y/N"
likesGarlic = gets.chomp.upcase

if likesGarlic == "Y" || likesGarlic == "YES"
  likesGarlic = true
elsif likesGarlic == "N" || likesGarlic == "NO"
  likesGarlic = false
else
  likesGarlic = nil
end

puts "Would you like to enroll in the company's health insurance? Y/N"
insurance = gets.chomp.upcase

if insurance == "Y" || insurance == "YES"
  insurance = true
elsif insurance == "N" || insurance == "NO"
  insurance = false
else
  insurance = nil
end

realAge = Time.new.year - yearBorn

if (realAge == age || realAge == age + 1) && (likesGarlic || insurance)
  result = "Probably not a vampire."
  conclusionReached = true
end

if (realAge != age && realAge != age + 1) && (!likesGarlic || !insurance)
  result = "Probably a vampire."
  conclusionReached = true
end

if (realAge != age && realAge != age + 1) && (!likesGarlic && !insurance)
  result = "Almost certainly a vampire."
  conclusionReached = true
end

if name == "Drake Cula" || name == "Tu Fang"
  result = "Definitely a vampire."
  conclusionReached = true
end

if conclusionReached != true
  result = "Results inconclusive."
end

p result



