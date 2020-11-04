def bfs(mat)

  queue = [2]
  visited =  []
  loop do
    i=0
    p "visiter:" + visited.inspect
    while !queue.empty? && i != 4 && !visited.include?(queue[0])      
      if (mat[queue[0]][i] == 1)
        queue.push(i)
      end
      if (i == 3)
        visited.push(queue[0])
        queue.shift
      end
      i = i+1
      p queue.inspect
    end
    if visited.length == 4
      return visited.inspect
    end
  end
end

mat = [
  [0,1,1,0],
  [0,0,1,0],
  [1,0,0,1],
  [0,0,0,1]
]

p bfs(mat)
# "[2, 0, 3, 1]"
