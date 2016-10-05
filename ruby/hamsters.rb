puts "What is the hamsters name?"
name=gets.chomp

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
    print "Next time, please enter Y or N. For now, we are leaving this as: #{adopt}. Thank you."
  end

puts "What is its age?"
age=gets.chomp.to_f
	if age == ""
		age = nil
	end
