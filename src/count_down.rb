def count_down_with_looping(num)
  while num >= 0
    puts "Count down in #{num}"
    num -= 1
  end
end

def count_down_with_recursion(num)
  return if num.negative?

  puts "Count down in #{num}"
  count_down_with_recursion(num - 1)
end

puts 'Starting count down with looping...'
count_down_with_looping(10)
puts 'done.'
puts 'Starting count down with recursion...'
count_down_with_recursion(10)
puts 'done.'
