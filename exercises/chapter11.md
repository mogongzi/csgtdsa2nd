1. Use recursion to write a function that accepts an array of strings and returns the total number of characters across
   all the strings. For example, if the input array is ["ab", "c", "def", "ghij"], the output should be 10 since there
   are 10 characters in total.

```ruby

def total_num_of_chars(strings, index = 0, count = 0)
  return count if index >= strings.size

  count += strings[index].length
  index += 1
  total_num_of_chars(strings, index, count)
end
```

2. Use recursion to write a function that accepts an array of numbers and returns a new array containing just the even
   numbers.

```ruby

def even_num_array(nums, index = 0)
  return nums if index >= nums.size

  if nums[index].odd?
    nums.delete(nums[index])
  else
    index += 1
  end
  even_num_array(nums, index)
end
```

3. There is a numerical sequence known as “Triangular Numbers.” The pattern begins as 1, 3, 6, 10, 15, 21, and continues
   onward with the Nth number in the pattern, which is N plus the previous number. For example, the 7th number in the
   sequence is 28, since it’s 7 (which is N) plus 21 (the previous number in the sequence). Write a function that
   accepts a number for N and returns the correct number from the series. That is, if the function was passed the number
   7, the function would return 28.

```ruby

def triangular_number(n)
  return 1 if n == 1

  n + triangular_number(n - 1)
end
```

4. Use recursion to write a function that accepts a string and returns the first index that contains the character “x.”
   For example, the string, "abcdefghijklmnopqrstuvwxyz" has an “x” at index 23. To keep things simple, assume the
   string definitely has at least one “x.”

```ruby

def first_index_of_x(string, index = 0)
  # base case
  return 0 if string[0] == 'x'

  first_index_of_x(string[1, string.length - 1]) + 1
end
```

5. This problem is known as the “Unique Paths” problem: Let’s say you have a grid of rows and columns. Write a function
   that accepts a number of rows and a number of columns, and calculates the number of possible “shortest” paths from
   the upper-leftmost square to the lower-rightmost square.
   For example, here’s what the grid looks like with three rows and seven columns. You want to get from the “S” (Start)
   to the “F” (Finish).
   By “shortest” path, I mean that at every step, you’re moving either one step to the right:
   or one step downward:
   Again, your function should calculate the number of shortest paths.

```ruby

def unique_paths(row, column)
  return 1 if row == 1 || column == 1

  unique_paths(row - 1, column) + unique_paths(row, column - 1)
end
```
