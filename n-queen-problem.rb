@board = [[0, 0, 0, 0 ],
          [0, 0, 0, 0 ],
          [0, 0, 0, 0 ],
          [0, 0, 0, 0 ]]

def right_upper_diagonal_for(row, column, n)
  diagonals = []
  until row == n || column == n
    diagonals << [row += 1, column += 1]
  end
  diagonals
end

def left_upper_diagonal_for(row, column, n)
  diagonals = []
  until row == n || column == 0
    diagonals << [row += 1, column -= 1]
  end
  diagonals
end

def right_lower_diagonal_for(row, column, n)
  diagonals = []
  until row == 0 || column == n
    diagonals << [row -= 1, column += 1]
  end
  diagonals
end

def left_lower_diagonal_for(row, column, n)
  diagonals = []
  until row == 0 || column == 0
    diagonals << [row -= 1, column -= 1]
  end
  diagonals
end


def queen_in_diagonal(row, column, n)
  diagonals =
    right_upper_diagonal_for(row, column, n) +
    left_upper_diagonal_for(row, column, n) +
    left_lower_diagonal_for(row, column, n) +
    right_lower_diagonal_for(row, column, n)
  diagonals.any? { |r, c| r == row && c == column } ||
  diagonals.any? { |r, c| @queens_in_board.any? { |qr, qc| r == qr && c == qc } }
end

def queen_in_row(row)
  @board.find { |r, c| r == row }
end

def move(x, y)
  (0..3).each do |i|
    x = x + i
    y = y + i
    move(x, y)
  end
end
