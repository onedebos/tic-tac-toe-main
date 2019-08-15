require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

game = Game.new
board = Board.new
puts 'Welcome to Tic Tac Toe game'
board.draw_board
until game.player_wins? 
  game.player_move
  board.draw_board
  game.player_wins?
  game.which_player?
end
