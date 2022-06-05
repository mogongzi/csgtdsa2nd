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

require 'test/unit'

class FirstDuplicate < Test::Unit::TestCase
  def test_first_duplicate_char
    array = %w[a b c d c e f]
    expected = 'c'
    actual = first_duplicate_char(array)
    assert_equal(expected, actual)
  end
end
