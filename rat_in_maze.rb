@board = [[1, 1, 1, 0 ],
          [1, 1, 1, 1 ],
          [0, 1, 0, 1 ],
          [1, 1, 0, 1 ]]

@move_x = [0, 1, 1, 0]
@move_y = [1, 0, 0, -1]

def printBoard()
  @board.each do |row|
    puts row.inspect
  end
  puts "-----------------------------------------"
  puts "-----------------------------------------"
  puts "-----------------------------------------"

end

def validMove(x, y)
  if (x >= 0 && x < 4 && y >= 0 && y < 4 && @board[x][y] == 1 && @board[x][y] != 'x')
    return true
  end
  return false
end

def move(x, y)
  puts [x, y].inspect
  if (x == 3 && y == 3)
    printBoard()
    puts "find_solution"
    return true
  end
  (0..3).each do |i|
    pos_x = x + @move_x[i]
    pos_y = y + @move_y[i]
    if validMove(pos_x, pos_y)
      @board[pos_x][pos_y] = 'x'
      if (move(pos_x, pos_y))
        return true
      else
      # @board[pos_x][pos_y] = 1
        return false
      end
    end
  end
  return false
end

@board[0][0] = 'x'
if !(move(0,0))
  printBoard()
  puts "no find"
end
