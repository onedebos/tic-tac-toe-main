# frozen_string_literal: true

require_relative '../lib/player'
require_relative '../lib/board'

class Game #:nodoc:
  attr_reader :space_used
  attr_reader :player1
  attr_reader :player2
  attr_reader :board

  def initialize(player_1_name, palyer_2_name)
    @board = Board.new
    @player1 = Player.new(player_1_name, 'X')
    @player2 = Player.new(palyer_2_name, 'O')
  end

  def check_for_win(player)
    winners = %w[123 456 789 147 258 369 159 357]
    moves = player.moves
    # moves = moves[moves.length - 3..moves.length - 1] if moves.length > 3
    winners.any? do |element|
      check = 0
      moves.each_char do |char|
        check += 1 if element.include?(char)
      end
      check >= 3
    end
  end

  def make_move(index, player)
    @board.space_used += 1
    @board.register_play(((index.to_i - 1) / 3.floor), ((index.to_i - 1) % 3), player.letter_assigned)
    player.moves += index
  end
end