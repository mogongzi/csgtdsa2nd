def insertion_sort(array)
  (1..array.size - 1).each do |i|
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
    array = create_random_array(20)
    sorted_array = array.sort
    insertion_sort(array)
    assert_equal(sorted_array, array)
  end
end
