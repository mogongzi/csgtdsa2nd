def greatest_number(array)
  return nil if array.empty?

  greatest_number = array[0]
  array.each do |i|
    greatest_number = i if i > greatest_number
  end

  greatest_number
end

require 'test/unit'

class GreatestSingleNumber < Test::Unit::TestCase
  def test_greatest_single_number
    array = [10, 7, 6, 5, 4, 2, 3]
    assert_equal(10, greatest_number(array))
  end
end
