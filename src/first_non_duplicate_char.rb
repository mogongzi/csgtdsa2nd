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

require 'test/unit'

class FirstNonDuplicateChar < Test::Unit::TestCase
  def test_first_non_duplicate_char
    word = 'minimum'
    expected = 'n'
    actual = first_non_duplicate_char(word)
    assert_equal(expected, actual)
  end
end
