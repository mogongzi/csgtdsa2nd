def print_array_numbers(array)
  array.each do |item|
    if item.is_a?(Array)
      print_array_numbers(item)
    else
      puts item
    end
  end
end

array = [1, 2, 3, [4, 5, 6], 7, [8, [9, 10, 11, [12, 13, 14]]],
         [15, 16, 17, 18, 19, [20, 21, 22, [23, 24, 25, [26, 27, 29]], 30, 31], 32], 33]
print_array_numbers(array)
