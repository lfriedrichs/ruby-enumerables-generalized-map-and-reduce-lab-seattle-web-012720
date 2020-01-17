def map(source_array)
  index = 0 
  new_array = Array.new
  while index < source_array.size 
    new_array[index] = yield(source_array[index])
    index += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    new_value = 0
    index = 0
  else 
    new_value = source_array[0]
    index = 1
  new_value = starting_point
  while index < source_array.size 
    new_value = yield(new_value, source_array[index])
    index += 1
  end
  new_value
end
