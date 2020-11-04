@board = [
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1,-1,-1]]

# @board = [
#   [-1,-1,-1,-1,-1],
#   [-1,-1,-1,-1,-1],
#   [-1,-1,-1,-1,-1],
#   [-1,-1,-1,-1,-1],
#   [-1,-1,-1,-1,-1]]
  
@moves_x = [2, 1, -1, -2, -2, -1, 1,   2 ]
@moves_y = [1, 2,  2,  1, -1, -2, -2, -1 ]

pos_x, pos_y = [0, 0]
@board[pos_x][pos_y] = 0

def printBoard()
  @board.each do |row|
    puts row.inspect
  end
  puts "-----------------------------------------"
  puts "-----------------------------------------"
  puts "-----------------------------------------"

end

def isValidMove(pos_x, pos_y, move)
  if (pos_x >= 0 && pos_x < 8 && pos_y >= 0 && pos_y < 8 && @board[pos_x][pos_y] == -1)
    return true
  end
  return false
end

def move(x, y, move)
  if (move == 63)
    printBoard()
    return true
  end
  (0..7).each do |i|
    pos_x = x + @moves_x[i]
    pos_y = y + @moves_y[i]
    if isValidMove(pos_x, pos_y, move+1)
      @board[pos_x][pos_y] = move+1
      if (move(pos_x, pos_y, move+1))
        return true
      end
      @board[pos_x][pos_y] = -1
    end
  end
  return false
end

if (move(0,0, 0))
  puts "solution exists"
end

# 0  59  38  33  30  17   8  63
# 37  34  31  60   9  62  29  16
# 58   1  36  39  32  27  18   7
# 35  48  41  26  61  10  15  28
# 42  57   2  49  40  23   6  19
# 47  50  45  54  25  20  11  14
# 56  43  52   3  22  13  24   5
# 51  46  55  44  53   4  21  12
