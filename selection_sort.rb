def selection_sort(array)
  (0...array.size).each do |i|
    lowest_index = i
    ((i + 1)...array.size).each do |j|
      lowest_index = j if array[j] < array[lowest_index]
    end

    temp = array[i]
    array[i] = array[lowest_index]
    array[lowest_index] = temp
  end
end

require 'test/unit'
require './util'

class TestSelectionSort < Test::Unit::TestCase
  def test_selection_sort
    array = create_random_array(20)
    sorted_array = array.sort
    selection_sort(array)
    assert_equal(sorted_array, array)
  end
end
