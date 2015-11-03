require_relative "count"


def find_four(board, row_selected, column_selected, current_piece, number_to_win)
	up_left = count_pieces(-1, -1, board, row_selected, column_selected, current_piece)
	left = count_pieces(0, -1, board, row_selected, column_selected, current_piece)
	down_left = count_pieces(1, -1, board, row_selected, column_selected, current_piece)
	down = count_pieces(1, 0, board, row_selected, column_selected, current_piece)
	down_right = count_pieces(1, 1, board, row_selected, column_selected, current_piece)
	right = count_pieces(0, 1, board, row_selected, column_selected, current_piece)
	up_right = count_pieces(-1, 1, board, row_selected, column_selected, current_piece)

	puts "Right: #{right}"
	puts "Left: #{left}"

	if up_left + down_right + 1 >= number_to_win || left + right + 1 >= number_to_win || down_left + up_right + 1 >= number_to_win || down + 1 == number_to_win
		puts "GAME OVER, #{current_piece} wins!!"
		exit
	end 
end