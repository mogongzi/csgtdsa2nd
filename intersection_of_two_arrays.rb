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

require 'test/unit'

class IntersectionOfTwoArrays < Test::Unit::TestCase
  def test_intersection_of_two_arrays
    array_a = [1, 2, 3, 4, 5]
    array_b = [0, 2, 4, 6, 8]
    expected = [2, 4]
    actual = intersection_of_two_arrays(array_a, array_b)
    assert_equal(expected, actual)
  end
end
