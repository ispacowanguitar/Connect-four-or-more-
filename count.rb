def count_pieces(row_direction, column_direction, board, row_selected, column_selected, current_piece)
	count = 0
	until row_selected + row_direction > board.length - 1 || column_selected + column_direction > board[0].length
		if board[row_selected + row_direction][column_selected + column_direction] == current_piece
			count += 1
			if row_direction > 0
				row_direction += 1
			elsif row_direction < 0
				row_direction -= 1
			end
				
			if column_direction > 0
				column_direction += 1
			elsif column_direction < 0
				column_direction -= 1
			end
		else 
			break
		end	
	end

	count
end