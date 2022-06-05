1. Write a function that returns the intersection of two arrays. The intersection is a third array that contains all
   values contained within the first two arrays. For example, the intersection of [1, 2, 3, 4, 5] and [0, 2, 4, 6, 8]
   is [2, 4]. Your function should have a complexity of O(N). (If your programming language has a built-in way of doing
   this, don’t use it. The idea is to build the algorithm yourself.)

```ruby

def intersection_of_two_arrays(array_a, array_b)
  combined = {}
  array_a.each do |a|
    combined[a] = false
  end
  array_b.each do |b|
    combined[b] = true if combined.key?(b)
  end
  combined.each_key do |key|
    combined.delete(key) if combined[key] == false
  end
  combined.keys.to_a
end
```

2. Write a function that accepts an array of strings and returns the first duplicate value it finds. For example, if the
   array is ["a", "b", "c", "d", "c", "e", "f"], the function should return "c", since it’s duplicated within the
   array. (You can assume that there’s one pair of duplicates within the array.) Make sure the function has an
   efficiency of O(N).

```ruby

def first_duplicate_char(array)
  hash = {}
  array.each do |item|
    if hash.include?(item)
      return item
    else
      hash[item] = true
    end
  end
end
```

3. Write a function that accepts a string that contains all the letters of the alphabet except one and returns the
   missing letter. For example, the string, "the quick brown box jumps over a lazy dog" contains all the letters of the
   alphabet except the letter, "f". The function should have a time complexity of O(N).

```ruby

def alphabet_missing_one(word)
   hash = {}
   ('a'..'z').each do |letter|
      hash[letter] = 0
   end
   word.each_char do |character|
      hash[character] += 1 if character != ' '
   end
   hash.each do |k, v|
      return k if v.zero?
   end
end
```

4. Write a function that returns the first non-duplicated character in a string. For example, the string, "minimum" has
   two characters that only exist once—the "n" and the "u", so your function should return the "n", since it occurs
   first. The function should have an efficiency of O(N).

```ruby

def first_non_duplicate_char(word)
  hash = {}
  word.each_char do |character|
    if hash.include?(character)
      hash[character] += 1
    else
      hash[character] = 1
    end
  end
  word.each_char do |character|
    return character if hash[character] == 1
  end
end
```
