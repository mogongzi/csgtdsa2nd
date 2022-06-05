def linear_search(array, search_value)
  array.each_with_index do |element, index|
    if element == search_value
      return index
    elsif element > search_value
      break
    end
  end
end

require 'test/unit'

class OrderedArrayLinearSearch < Test::Unit::TestCase
  def test_linear_search
    array = [2, 24, 70, 85, 101]
    value = 70
    assert_equal(2, linear_search(array, value))
  end
end
