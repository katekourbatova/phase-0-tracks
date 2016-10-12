def define
  puts "Not yet run"
  yield(4, 6)
  puts "I just ran it!!"
end

define {|par1, par2| puts par1 + par2  }