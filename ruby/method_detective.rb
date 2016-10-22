# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase #or "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”


"zom".insert(1,"o") #or "zom".insert(2,"o") or "zom".insert(-2,"o") or "zom".insert(-3,"o")
# => “zoom”


"enhance".center(15)
# => "    enhance    "
"enhance".ljust(11).rjust(15) #or "enhance".rjust(11).ljust(15)
# => "    enhance    "


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


"the usual".insert(9, " suspects") #or "the usual".insert(-1, " suspects")
#=> "the usual suspects"
"the usual".concat " suspects" #or "the usual" << " suspects"
#=> "the usual suspects"


" suspects".prepend("the usual") #or " suspects".prepend "the usual"
# => "the usual suspects"
" suspects".insert(0, "the usual")
# => "the usual suspects"


"The case of the disappearing last letter".chop #or "The case of the disappearing last letter".chop!
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".chomp("r") #or "The case of the disappearing last letter".chomp!("r")
# => "The case of the disappearing last lette"


"The mystery of the missing first letter".sub("T","")
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".slice(1..38) #or "The mystery of the missing first letter".slice("he mystery of the missing first letter")
# => "he mystery of the missing first letter"


"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"


"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the integer ordinal of "z", or the ASCII code for "z"


"How many times does the letter 'a' appear in this string?".count("a")
# => 4