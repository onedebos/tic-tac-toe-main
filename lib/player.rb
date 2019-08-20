# frozen_string_literal: true

# class defining player
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

# !works weirdly. Game class cannot be initalized(error) w/o
# playingGame module being declared here
# even though Game has access to PG module from main.rb
