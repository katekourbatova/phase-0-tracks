puts "What is the hamsters name?"
name=gets.chomp.capitalize

puts "What is the volume level?"
volume=gets.chomp.to_i

puts "What is its color?"
color=gets.chomp

puts "Is it a good candidate for adoption? Y or N"
adopt=gets.chomp.upcase
  if adopt == "Y"
    adopt = true
  elsif adopt == "N"
    adopt = false
  else
    puts "Next time, please enter Y or N. For now, we are leaving this as: #{adopt}. Thank you."
  end

puts "What is its age? Please enter in years as a numeral (e.g. 7)"
age=gets.chomp
	if age == ""
		age = nil
  else
    age = age.to_f
  end

  if age == 0.0
    puts "Next time, please enter the age as a numeral instead of spelling it out."
	end

print "Thank you for filling in the data for our new hamster, #{name}. "
print "#{name} has a volume level of #{volume}, and has fur that is a #{color} color. "
print "Is it a good candidate for adoption? #{adopt} "

  if age == nil
    print "We're not sure how old #{name} is."
  else
    print "#{name} is #{age} years old."
  end