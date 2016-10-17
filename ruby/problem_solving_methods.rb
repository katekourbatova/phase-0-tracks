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
array = [42, 6, 23, 14]
p array_search(array, 1)
p array_search(array, 23)