# method for searching within an array for an integer n
def array_search(array, n)
  index=0
  while index<array.length
    found = (array[index] == n)
    if found
      return index
      break
    end
    index += 1
  end
  if !found
    return nil
  end
end

#testing the method
puts "Testing the method for searching within an array for a given integer."
array = [42, 6, 23, 14]
p array_search(array, 1)
p array_search(array, 23)


# method for returning an array of n Fibonacci sequence numbers (in order)

def generate_fibonacci(n)
  fib_sequence = [0, 1]
  if n == 1 || n == 2
    fib_sequence = fib_sequence.take(n) # Returns first n elements from the array.
  elsif n < 1
    fib_sequence = []
  end

  index = 2
  while index < n
    fib_sequence.push(fib_sequence[index-1] + fib_sequence[index-2])
    index += 1
  end
  fib_sequence
end

#testing the method
puts "Testing the method for returning a number of Fibonacci terms."
p generate_fibonacci(0)
p generate_fibonacci(1)
p generate_fibonacci(2)
p generate_fibonacci(6)

puts "Is the 100th term in Fibonacci sequence correctly generated?"
correct_100_term = (generate_fibonacci(100)[99] == 218922995834555169026)
p correct_100_term


# Pseudocode insertion sort method:
# Start with the second item (index 1) in the list, and assign the value of that item to a "key".
# Compare the key to the current index-1 (in this case 0).
# - If the key is bigger, leave it in place.
# - If the key is smaller, move the value you're comparing over to the right (move index 0 to index 1),
#   and then copy the value of the key into the space to the left of the value that is larger than it.
# - move to the next index, repeat while the index is less than the length of the array.
#   (except this time, keep comparing to each index to the left until you find one that is not smaller)


