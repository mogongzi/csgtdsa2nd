def factorial(num)
  if num == 1
    1
  else
    num * factorial(num - 1)
  end
end

puts factorial(ARGV[0].to_i)
