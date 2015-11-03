
puts "how many rows do you want?"
board_rows = gets.chomp.to_i

puts "how many columns do you want?"
board_collums = gets.chomp.to_i

require_relative "game_over"

puts "How many do you want to have to connect to win?"
number_to_win = gets.chomp.to_i

board = Array.new(board_rows){Array.new(board_collums,"-")}
board.each {|row| puts row.join(" ")}


x_turn = true
while true
  if x_turn == true  
    puts "Player 1 - which column would you like to choose?"
    current_piece = "x"
  else
    puts "Player 2 - which column would you like to choose?"
    current_piece = "o"
  end

  column_selected = gets.chomp.to_i - 1
  row_selected = board_rows - 1
  until board[row_selected][column_selected] == "-" || row_selected < 0
    row_selected = row_selected - 1
  end

    board[row_selected][column_selected] = current_piece

  board.each {|row| puts row.join(" ")}

  find_four(board, row_selected, column_selected, current_piece, number_to_win)

  x_turn = not(x_turn)
end

