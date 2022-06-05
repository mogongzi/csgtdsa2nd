def average_celsius(fahrenheit_readings)
  # collect Celsius numbers here.
  celsius_numbers = []

  # Convert each reading to Celsius and add to array:
  fahrenheit_readings.each do |fahrenheit_reading|
    celsius_conversion = (fahrenheit_reading - 32) / 1.8
    celsius_numbers.push(celsius_conversion)
  end

  # Get sum of all Celsius numbers:
  sum = 0.0
  celsius_numbers.each do |celsius_number|
    sum += celsius_number
  end

  # Return mean average:
  sum / celsius_numbers.length
end

require 'test/unit'

class AverageCelsius < Test::Unit::TestCase
  def test_average_celsius
    fahrenheit_readings = [92, 89, 66, 54, 32, 25]
    temperature_mean = average_celsius(fahrenheit_readings)
    assert_equal(15.370370370370372, temperature_mean)
  end
end
