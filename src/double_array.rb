def double_array(array, index = 0)
  return if index >= array.size

  array[index] *= 2
  double_array(array, index + 1)
end

array = [0, 1, 2, 3, 4]
double_array(array)
puts array.inspect.to_s
