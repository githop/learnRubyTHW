boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


def create_word(board, *coords)
	coords.map {|coord| board[coord.first][coord.last]}.join('')
end

def get_row(row, board)
	board[row].inspect
end

def get_col(col, board)
	board.collect { |row| row[col]}
end


puts create_word(boggle_board, [0,1], [0,2], [1,2]) 
puts get_row(1, boggle_board)
puts get_col(1, boggle_board)






