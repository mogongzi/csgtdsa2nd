def binary_search(array, search_value)
  lower_bound = 0
  upper_bound = array.length - 1

  while lower_bound <= upper_bound
    middle_point = (lower_bound + upper_bound) / 2
    value_at_middle_point = array[middle_point]

    if search_value == value_at_middle_point
      return middle_point
    elsif search_value < value_at_middle_point
      upper_bound = middle_point - 1
    elsif search_value > value_at_middle_point
      lower_bound = middle_point + 1
    end
  end
end

require 'test/unit'

class OrderedArrayBinarySearch < Test::Unit::TestCase
  def test_binary_search
    array = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
    assert_equal(7, binary_search(array, 14))
  end
end
