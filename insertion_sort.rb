def insertion_sort(array)
  (1..array.size - 1).each do |i|
    temp = array[i]
    position = i - 1
    while position >= 0
      if array[position] > array[position + 1]
        array[position + 1] = array[position]
        array[position] = temp
      end
      position -= 1
    end
  end
end

require 'test/unit'

class InsertionSort < Test::Unit::TestCase
  def test_insertion_sort
    array = [4, 2, 5, 8, 9, 7, 1, 3]
    insertion_sort(array)
    assert_equal([1, 2, 3, 4, 5, 7, 8, 9], array)
  end
end
