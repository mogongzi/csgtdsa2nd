def anagram_of(string)
  # base case: if the string is only one character,
  # return an array containing just a single-character string:
  return [string[0]] if string.length == 1

  # create an array to hold all the anagrams:
  collection = []

  # find all anagrams of the substring from the second character until
  # the end. For example, if the string is 'abcd', the substring is 'bcd',
  # so we'll find all anagrams of 'bcd'
  substring_anagrams = anagram_of(string[1, string.length - 1])

  # iterate over each substring
  substring_anagrams.each do |anagram_substring|
    # iterate over each index of the substring, from 0 until one index
    # past the end of string:
    (0..anagram_substring.length).each do |index|
      # create a copy of the substring
      copy = String.new(anagram_substring)
      # insert the first character of our string into the substring anagram copy. Where
      # it will go depends on the index we're up to within this loop. Then, take this new
      # string and add it to our collection of anagrams:
      collection << copy.insert(index, string[0])
    end
  end
  puts "collection: #{collection.inspect}"
  # return the entire collection of anagrams:
  collection
end

puts anagram_of(ARGV[0].to_s)
