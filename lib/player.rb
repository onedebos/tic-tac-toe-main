# frozen_string_literal: true

# class defining player
class Player
  attr_accessor :name, :symbol, :fill_cells
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @fill_cells = []
  end
end

module Drawing
  
  def draw_board
    puts "\n"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
  
end
