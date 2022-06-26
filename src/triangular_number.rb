def triangular_number(n)
  return 1 if n == 1

  n + triangular_number(n - 1)
end

require 'test/unit'

class TriangularNumberTest < Test::Unit::TestCase
  def test_triangular_number
    actual = triangular_number(6)
    expected = 21
    assert_equal(expected, actual)

    actual = triangular_number(7)
    expected = 28
    assert_equal(expected, actual)

    actual = triangular_number(8)
    expected = 36
    assert_equal(expected, actual)

  end
end
