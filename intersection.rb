def intersection(first_array, second_array)
  result = []
  (0..first_array.size - 1).each do |i|
    (0..second_array.size - 1).each do |j|
      next unless first_array[i] == second_array[j]

      result << first_array[i]
      # add this break for improving execution efficiency. Since there is no need to compare the rest item.
      break
    end
  end

  result
end

require 'test/unit'

class IntersectionTest < Test::Unit::TestCase
  def test_intersection
    array_a = [3, 1, 4, 2]
    array_b = [4, 5, 3, 6]
    result = intersection(array_a, array_b)
    assert_equal([3, 4], result)
  end
end
