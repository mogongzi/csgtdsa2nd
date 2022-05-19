1. Use Big O Notation to describe the time complexity of an algorithm that takes 4N + 16 steps.
O(N)

2. Use Big O Notation to describe the time complexity of an algorithm that takes 2<img src="https://latex.codecogs.com/svg.image?N^{2}">.
O(<img src="https://latex.codecogs.com/svg.image?N^{2}">)

3. Use Big O Notation to describe the time complexity of the following function, which returns the sum of all numbers of an array after the numbers have been doubled:
```ruby
def double_then_sum(array)
  doubled_array = []
  array.each do |number|
    doubled_array << number *= 2
  end
  sum = 0
  doubled_array.each do |number|
    sum += number
  end
  return sum
end
```
O(N)

4. Use Big O Notation to describe the time complexity of the following function, which accepts an array of strings and prints each string in multiple cases:
```ruby
def multiple_cases(array)
  array.each do |string|
    puts string.upcase
    puts string.downcase
    puts string.capitalize
  end
end
```
O(N)

5. The next function iterates over an array of numbers, and for each number whose index is even, it prints the sum of that number plus every number in the array. What is this function’s efficiency in terms of Big O Notation?
O(<img src="https://latex.codecogs.com/svg.image?N^{2}">)
