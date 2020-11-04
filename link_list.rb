class Node
  attr_accessor :elem, :next_node

  def initialize(elem, next_node=nil)
    @elem = elem
    @next_node = next_node
  end
end


class LL
  def initialize(elem, node=nil)
    @node = Node.new(elem, node)
  end

  def add(elem)
    current = @node
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(elem)
  end


  def delete(elem)
    ntd = @node
    while ntd.next_node != nil
      if (ntd.next_node.elem == elem)
        ntd.next_node = ntd.next_node.next_node
        return
      end
      ntd = ntd.next_node
    end
  end

  def add_elem_in_sorted_way(elem)
    node = @node
    while node.next_node != nil
      if (node.next_node.elem > elem)
          n = Node.new(elem, node.next_node)
          node.next_node = n
          return
      end
      node = node.next_node
    end
  end

  def delete_at_position(pos)
    i = 0
    node = @node
    while(i < pos-1)
      node = node.next_node
      i += 1
    end
    node.next_node = node.next_node.next_node
  end

  def search(elem)
    node = @node
    while node.next_node != nil
      if (node.elem == elem)
          return node
      else
        node = node.next_node
      end
    end
  end

  # time complaxity O(n)
  def find_middle()
    node = @node
    length=0
    i=0
    while node.next_node != nil
      length += 1
      node = node.next_node
    end
    node = @node  
    mid = (length/2).to_i
    (0..(mid -1)).each do
      node = node.next_node
    end
    return node
  end

  def add_loop() 
    node = @node
    while node.next_node != nil
      node = node.next_node
    end
      node.next_node = @node
  end

  def find_loop()
    node = @node
    oth_node = @node
    while node.next_node != nil && oth_node.next_node != nil
      node = node.next_node
      oth_node = oth_node.next_node.next_node
      if node.elem == oth_node.elem
        return "Loop exist"
      end
    end
  end

  # time complaxity O(log(n))
  def find_middle_ologn()
    node = @node
    oth_node = @node

    while node.next_node !=nil && oth_node.next_node !=nil
      node = node.next_node.next_node
      oth_node = oth_node.next_node
      if node.next_node == nil
        oth_node.elem
      end
    end
  end


  def josepuh()
    node = @node
    kill_man(node)
  end

  def kill_man(node)
    if (node.elem == node.next_node.elem)
      p node.elem
      return
    end
    node.next_node = node.next_node.next_node
    kill_man(node.next_node)
  end


  def get()
    @node
  end
end

l = LL.new(1)
l.add(2)
l.add(3)
l.add(4)
l.add(5)
l.add(6)
l.add(7)
l.add(8)

l.add(9)


l.add_loop()
l.josepuh()
# l.find_loop()
# l.find_middle_ologn()


# l.delete(4)
# p l.search(3)
# l.delete_at_position(2)
# l.add_elem_in_sorted_way(5)
# l.add_elem_in_sorted_way(3)
# l.add_elem_in_sorted_way(2)
# pp l.get()
