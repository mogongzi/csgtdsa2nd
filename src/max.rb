# frozen_string_literal: true

@count = 0

def max(array)
  @count += 1
  if array.length == 1
    puts "total recursions: #{@count}"
    return array[0]
  end

  # calculate the max of remainder of the array and store it inside a variable
  max_of_remainder = max(array[1, array.length - 1])

  if array[0] > max_of_remainder
    return array[0]
  else
    return max_of_remainder
  end
end

puts max([1, 2, 3, 4])
