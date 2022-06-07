class Queue
  def initialize
    @data = []
  end

  def enqueue(item)
    @data << item
  end

  def dequeue
    # The Ruby shift method removes and returns the first element of an array
    @data.shift
  end

  def read
    @data.first
  end
end

require 'test/unit'

class QueueTest < Test::Unit::TestCase
  def test_queue
    queue = Queue.new
    queue.enqueue(5)
    queue.enqueue(9)
    queue.enqueue(100)
    assert_equal(5, queue.read)
    queue.dequeue
    assert_equal(9, queue.read)
    queue.dequeue
    assert_equal(100, queue.read)
  end
end
