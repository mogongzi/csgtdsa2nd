require 'set'

def create_random_array(size)
  set = Set[]
  size.times.map do
    num = rand(0..(size * 5)).round(0)
    num = rand(0..(size * 5)).round(0) while set.include?(num)
    set << num
  end
  set.to_a
end

array = create_random_array(20)
puts "array: #{array.inspect}, array size: #{array.size}"
array.sort!
puts "array: #{array.inspect}, array size: #{array.size}"
