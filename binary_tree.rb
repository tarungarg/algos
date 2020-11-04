class Node
  attr_accessor :elem, :left, :right

  def initialize(elem=nil, left=nil, right=nil)
    @elem = elem
    @left = left
    @right = right
  end
end

class BT
  def initilalize
    @pre_node=''
  end

  def inOrdertraverse(node)
    if node.left != nil
      inOrdertraverse(node.left)
    end
    p node.elem

    if node.right != nil
      inOrdertraverse(node.right)
    end
  end
end

n = Node.new(28)
n.left = Node.new(10)
n.right = Node.new(30)
n.left.left = Node.new(5)
n.left.right = Node.new(4)
n.right.left = Node.new(32)
n.right.right = Node.new(34)
# pp n
bt = BT.new
bt.inOrdertraverse(n)
