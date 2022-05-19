def insertion_sort(array)
  (0..array.size - 1).each_with_index do |index|
    temp = array[index]
    position = index - 1

    while position >= 0
      if array[position] > temp
        array[position + 1] = array[position]
        position -= 1
      else
        break
      end
    end
    array[position + 1] = temp
  end
end

require 'test/unit'

class InsertionSort < Test::Unit::TestCase
  def test_insertion_sort
    array = [4, 2, 7, 3, 1, 8, 9]
    insertion_sort(array)
    assert_equal([1, 2, 3, 4, 7, 8, 9], array)
  end
end
