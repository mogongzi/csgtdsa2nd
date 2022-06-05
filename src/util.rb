require 'set'

def create_random_array(size)
  set = Set[]
  size.times.map do
    num = rand(0..(size * 5)).round(0)
    num = rand(0..(size * 5)).round(0) while set.include?(num)
    set << num
  end
  set.to_a
end

require 'test/unit'

class RandomArray < Test::Unit::TestCase
  def test_random_array
    array = create_random_array(10)
    sorted_array = array.sort
    array.sort!
    assert_equal(sorted_array, array)
  end
end
