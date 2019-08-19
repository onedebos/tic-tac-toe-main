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

# module declaration
module PlayingGame end

# !works weirdly. Game class cannot be initalized(error) w/o
# playingGame module being declared here
# even though Game has access to PG module from main.rb
