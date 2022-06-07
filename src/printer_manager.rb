require './queue'
class PrinterManager
  def initialize
    @queue = Queue.new
  end

  def queue_print_job(job)
    @queue.enqueue(job)
  end

  def run
    print(@queue.dequeue) while @queue.read
  end

  private
  def print(document)
    puts document
  end
end

print_manager = PrinterManager.new
print_manager.queue_print_job('First document')
print_manager.queue_print_job('Second document')
print_manager.queue_print_job('Third document')
print_manager.run
