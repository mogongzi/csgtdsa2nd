def selection_sort(array)
  (0..array.size - 1).each_with_index do |i|
    lowest_index = i
    ((i + 1)..array.size - 1).each_with_index do |j|
      lowest_index = j if array[j] < array[lowest_index]
    end

    temp = array[i]
    array[i] = array[lowest_index]
    array[lowest_index] = temp
  end
end

require 'test/unit'

class TestSelectionSort < Test::Unit::TestCase
  def test_selection_sort
    array = [4, 2, 7, 3, 1, 8, 9]
    selection_sort(array)
    assert_equal([1, 2, 3, 4, 7, 8, 9], array)
  end
end
