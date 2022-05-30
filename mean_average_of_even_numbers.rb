def average_of_even_number(array)
  # The mean average of even numbers will be defined as the sum of
  # the even numbers divided by the count of even numbers, so we
  # keep track of both the sum and the count:
  sum = 0.0
  count_of_even_numbers = 0

  # We iterate through each number in the array, and if we encounter
  # an even number, we modify the sum and the count:
  array.each do |number|
    if number.even?
      sum += number
      count_of_even_numbers += 1
    end
  end

  sum / count_of_even_numbers
end

require 'test/unit'

class AverageOfEvenNumbersTest < Test::Unit::TestCase
  def test_average_of_even_numbers
    array = (1..25).to_a
    num = average_of_even_number(array)
    assert_equal(13.0, num)
  end
end
