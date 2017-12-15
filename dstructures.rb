class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store.unshift(el)
  end

  def dequeue
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    return @store.length
  end

  def empty?
    @store.empty?
  end
end

class MyStack
  def initialize
    @store = []
  end

  def push(el)
    @store << el
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end
