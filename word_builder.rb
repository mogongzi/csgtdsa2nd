def word_builder(array)
  collection = []
  (0...array.size).each do |i|
    (0...array.size).each do |j|
      collection << array[i] + array[j] if i != j
    end
  end
  collection
end

require 'test/unit'

class WordBuilderTest < Test::Unit::TestCase
  def test_word_builder
    array = %w[a b c d]
    result = word_builder(array)
    assert_equal(%w[ab ac ad ba bc bd ca cb cd da db dc], result)
  end
end
