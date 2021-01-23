require 'pry'

class TicTacToe
  attr_accessor :board,:TicTacToe 
  
WIN_COMBINATIONS = [ 
[0, 1, 2],
[3, 4, 5],
[6, 7, 8],
[0, 3, 6],
[1, 4, 7],
[2, 5, 8], 
[0, 4, 8],
[6, 4, 2]
] 
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
 
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
 
  def turn_count
    count = 0 
    board.each do |entry|
     if entry == "X" || entry == "O" 	     
       count +=1 
      end 
    end 	   
    count
end 	

 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end


def play
  until over?
    turn 
  end 
  if draw?
     puts "Cat's Game!"
    end 
   if won?
   puts "Congratulations !"
   end 
 end 
 
def over?
  if won? || draw?
  end 
  play
end 


def input_to_index(user_input)
  index = user_input.to_i
  array_index = index-1
end



def move(array_index, player)
  board[array_index] = player
end 
 
def position_taken?(array_index)
   if board[array_index] = nil || board[array_index] = " " 
     
    end 
end 


def valid_move?(array_index)
  array_index.between?(0,8) && !position_taken?(array_index)
end 

 
def turn
  user_input = gets.chomp 
  input_to_index(user_input)
  if !valid_move?
    puts Board 
    else user_input = gets.chomp 
 current_player
end 
end 


def won?
  
end 


def full?
  
end


def draw?
 
end 


def winner
  
end 


def over?
  if draw? || won?
    play 
  end 
  
  if won?
    puts "You won"
  end
end 
end 
  