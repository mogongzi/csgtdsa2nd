def total_num_of_chars(strings, index = 0, count = 0)
  return count if index >= strings.size

  count += strings[index].length
  index += 1
  total_num_of_chars(strings, index, count)
end

require 'test/unit'

class TotalNumberOfCharsTest < Test::Unit::TestCase
  def test_of_total_num_of_chars
    strings = %w[ab c def ghij]
    actual = total_num_of_chars(strings)
    assert_equal(10, actual)
  end
end
