# Procedural tic tac toe

board = Array.new(9, " ") # creates an array with 9 elements filled with " "
def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

def turn_count(board)
  board.count{|token| token == "X" || "O"}
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

# Object oriented tic tac toe

class TicTacToe
  def initilize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn_count 
    @board.count{|token| token == "X" || token == "X"}
  end 
  
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
end