def palindrome?(word)
  left_index = 0
  right_index = word.size - 1
  while left_index < (word.size / 2)
    return false unless word[left_index].eql?(word[right_index])

    left_index += 1
    right_index -= 1
  end
  true
end

require 'test/unit'

class IsPalindrome < Test::Unit::TestCase
  def test_if_palindrome
    word = 'palindrome'
    puts palindrome? word
    assert_false(palindrome?(word))
    word = 'test'
    assert_false(palindrome?(word))
    word = 'racecar'
    assert_true(palindrome?(word))
    word = 'deified'
    assert_true(palindrome?(word))
  end
end
