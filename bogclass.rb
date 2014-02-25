class BoggleBoard
  def initialize(board)
    @board = board
  end

  def create_word(*coords)
    @coords = coords
    @coords.map {|coord| @board[coord.first][coord.last]}.join('')
  end

  def get_row(row)
    @board[row]
  end

  def get_col(col)
    @board.collect {|row| row[col]}
  end

  def get_coord(row, col) 
    @board[row][col]
  end
end


dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)

puts boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"
puts boggle_board.get_row(1) == ["i", "o", "d", "t"]
puts boggle_board.get_col(1) == ["r","o","c","a"]
puts boggle_board.get_coord(3, 2) == "k"
