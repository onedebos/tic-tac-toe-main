# frozen_string_literal: true

class Board
    attr_accessor :board, :end_game
    def initialize
      @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
      @player_1 = Player.new('player 1', 'X')
      @player_2 = Player.new('player 2', 'O')
      @current_player = @player_1
      @end_game = false
    end
  
    def draw_board
      puts "#{@board[0]} |#{@board[1]} |#{@board[2]} | "
      puts '-------------'
      puts "#{@board[3]} |#{@board[4]} |#{@board[5]} | "
      puts '-------------'
      puts "#{@board[6]} |#{@board[7]} |#{@board[8]} | "
      puts '-------------'
    end
  
    def draw_legend
      puts 'Legend'
      puts '1 | 2 |3 '
      puts '4 | 5 |6 '
      puts '7 | 8 |9 '
      puts "\n"
    end
end
  