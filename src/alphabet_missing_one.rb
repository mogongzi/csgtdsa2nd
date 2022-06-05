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

require 'test/unit'

class AlphabetMissingOne < Test::Unit::TestCase
  def test_alphabet_missing_one
    word = 'the quick brown box jumps over a lazy dog'
    expected = 'f'
    actual = alphabet_missing_one(word)
    assert_equal(expected, actual)
  end
end
