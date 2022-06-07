require './stack'

def reverse_string(word)
  stack = Stack.new
  word.each_char do |c|
    stack.push(c)
  end
  word = ''
  word << stack.pop while stack.read
  word
end

require 'test/unit'

class ReverseString < Test::Unit::TestCase
  def test_reverse_string
    word = 'abcde'
    expected = 'edcba'
    actual = reverse_string(word)
    assert_equal(expected, actual)
  end
end
