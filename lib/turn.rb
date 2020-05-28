
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
    if board[index] == " " && index >= 0 && index <= 8
        true
    elsif board[index] == '' && index >= 0 && index <= 8
      true
    elsif board[index] == "X" || board[index] == "O"
      false
    else
      false
    end

end

def move(board, index, input)
  board[index] = input
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  if input >= 1 && input <= 9
    index = input_to_index(input)
    valid_move?(board, index)
  end

end
