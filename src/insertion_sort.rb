def insertion_sort(array)
  (1...array.size).each do |i|
    temp = array[i]
    position = i - 1
    while position >= 0
      break unless array[position] > temp

      array[position + 1] = array[position]
      position -= 1
    end
    array[position + 1] = temp
  end
end

require 'test/unit'
require './util.rb'

class InsertionSort < Test::Unit::TestCase
  def test_insertion_sort
    actual = create_random_array(20)
    expected = actual.sort
    insertion_sort(actual)
    assert_equal(expected, actual)
  end
end
