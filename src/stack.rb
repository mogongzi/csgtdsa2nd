class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

require 'test/unit'

class StackTest < Test::Unit::TestCase
  def test_stack
    stack = Stack.new
    stack.push(5)
    stack.push(4)
    assert_equal(4, stack.pop)
    assert_equal(5, stack.read)
    stack.push(3)
    assert_equal(3, stack.read)
  end
end
