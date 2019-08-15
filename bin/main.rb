# frozen_string_literal: true

require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

game = Game.new
puts 'Welcome to Tic Tac Toe game'

game.draw_board
until game.player_wins? 
  game.player_move
  game.draw_board
  game.player_wins?
  game.which_player?
end
