class LL
  attr_accessor :next, :data, :adjency_list
  def initialize(val)
    self.data = val
    self.adjency_list = []
  end

  def add_list(val)
    self.adjency_list << LL.new(val)
  end
end

class Node
  attr_accessor :nodes
  def initialize
    self.nodes = []
  end

  def push(val)
    self.nodes << val
  end
end

n = Node.new
l = LL.new(1)
l.add_list(2)
l.add_list(3)
n.push(l)

l = LL.new(2)
l.add_list(4)
l.add_list(5)
l.add_list(1)

n.push(l)

l = LL.new(3)
l.add_list(5)
l.add_list(1)
n.push(l)

l = LL.new(4)
l.add_list(5)
l.add_list(2)
l.add_list(6)
n.push(l)

l = LL.new(5)
l.add_list(3)
l.add_list(4)
l.add_list(6)
l.add_list(2)
n.push(l)

pp n