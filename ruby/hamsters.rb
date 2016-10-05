puts "What is the hamsters name?"
name=gets.chomp

puts "What is the volume level?"
volume=gets.chomp.to_i

puts "What is its color?"
color=gets.chomp

puts "Is it a good candidate for adoption?"
adopt=gets.chomp

puts "What is its age?"
age=gets.chomp.to_f
	if age == ""
		age = nil
	end