def first_index_of_x(string)
  # base case
  return 0 if string[0] == 'x'

  first_index_of_x(string[1, string.length - 1]) + 1
end

string = 'abcdefghijklmnopqrstuvwxyz'
puts first_index_of_x(string)
