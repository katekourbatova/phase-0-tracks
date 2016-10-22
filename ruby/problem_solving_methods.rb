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


# Insertion sort method (not dangerous):
# Create an array that will hold the sorted numbers, starting with the first item
# Start with the second item (index 1) in the array, and assign the value of that item to a "key".
# Compare the key to the (current index-1)
# - If the key is bigger, add it to the end of sorted array.
# - If the key is smaller, move the value you're comparing over to the right (move index 0 to index 1),
#   keep comparing until the key is bigger than the current item being compared and then copy the value of the key into the space to the left of the value that is larger than it.
# - move to the next index, repeat while the index is less than the length of the array.


def insertion_sort(array)
  key_index = 1
  sorted_array = [array[0]]

  while key_index < array.length
    key = array[key_index]
    
    # debug
    # p sorted_array
    # puts "key_index #{key_index}"
    
    if key >= sorted_array[-1] # if key is larger than or equal to the last term in the sorted array
      sorted_array << key
      key_index +=1

    else
      
      n = sorted_array.length - 1
        while n >= 0
          # debug
          # puts "n #{n} -- while"

          sorted_array[n+1] = sorted_array[n]
        
          if (n == 0) && (key < sorted_array[n])
            sorted_array[n] = key
            key_index += 1
            # debug
            # puts "n #{n} -- if"
            break
          elsif key >= sorted_array[n]
            sorted_array[n+1] = key
            key_index += 1
            # debug
            # puts "n #{n} -- elsif"
            break
          else
           n -= 1
          end
          
        end
    end
  end
  sorted_array
end


test_array = [13,5,29,37,2]
p insertion_sort(test_array)

