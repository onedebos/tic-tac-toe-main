# frozen_string_literal: true

require_relative 'player.rb'

# class tic-tac-toe game
class Game
  attr_accessor :board, :end_game
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @player1 = Player.new('Player 1', 'X')
    @player2 = Player.new('Player 2', 'O')
    @current_player = @player1
    @end_game = false
  end

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

  def which_player?
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def player_move
    move = player_input
    until @board[move] == ' '
      puts 'This cell is not available.'
      move = player_input
    end
    @board[move] = @current_player.symbol
    @current_player.fill_cells << move
  end

  def player_wins?
    conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    conditions.each do |condition|
      if (condition - @current_player.fill_cells).empty?
        puts "#{@current_player.name} wins!"
        @end_game = true
      end
    end
    if @player1.fill_cells.size + @player2.fill_cells.size >= 9
      puts "It's a draw."
      @end_game = true
    end
    @end_game
  end
end
