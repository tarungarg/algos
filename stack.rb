class Stack
  def initialize()
    @stack = []
  end

  def insert(ele)
    @stack.push(ele)
  end

  def delete()
    @stack.pop
  end

  def deque
    @stack.shift
  end


  def find_min
    temp_stack = @stack.pop
    @stack.each do |elem|
      if elem < temp_stack
        temp_stack = elem
      end
    end
    return temp_stack
  end

  def find_span
    temp_stack = []
    stocks = []
    @stack.each_with_index do |stack, index|
      x = 1
      stocks.push(index)
      if index == 0
        temp_stack.push(1)
      else
        while x != 0

          if(@stack[stocks[stocks.length - 2]] > @stack[stocks[stocks.length - 1]])
            fe = stocks[stocks.length - 1]
            le = stocks[stocks.length - 2]
            temp_stack.push(fe - le)
            x = 0
          else
            stocks.delete(stocks[stocks.length - 2])
          end
        end
      end
    end
    puts temp_stack.inspect

  end
end

# [100, 80, 60, 70, 60, 75, 85]
# [1 1 1 2 1 4 6 ]
st = Stack.new

st.insert(100)
st.insert(80)
st.insert(60)
st.insert(70)
st.insert(50)
st.insert(75)
st.insert(85)

pp st.find_span
