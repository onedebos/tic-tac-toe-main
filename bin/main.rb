# frozen_string_literal: true

require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative 'player_input.rb'

# module defining drawing
module Drawing
  def draw_board
    puts "\n"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def draw_legend
    puts 'Legend'
    puts '1 | 2 |3 '
    puts '4 | 5 |6 '
    puts '7 | 8 |9 '
    puts "\n"
  end

  def unavailable
    puts 'This cell is not available.'
  end

  def did_win
    puts "#{@current_player.name} wins!"
  end

  def draw
    puts "It's a draw."
  end

  def turn
    puts "Your turn, #{@current_player.name}. Pick a cell by
    choosing a number between 1-9."
  end

  def repeat_input
    puts ' You need to enter a number between 1 and 9.'
  end
end

game = Game.new
puts 'Welcome to Tic Tac Toe game'
game.draw_this
until game.player_wins?
  game.player_move
  game.draw_this
  game.player_wins?
  game.which_player?
end
