
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def valid_move?(board, index)
  if board[index] == "" || board[index] == " "
    true

  elsif index.to_i < 0 || index.to_i > 8 || board[index] == "X" || board[index] == "O"
    false
  end

end
