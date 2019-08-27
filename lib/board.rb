class Board #:nodoc:
  attr_reader :array
  attr_accessor :space_used

  def initialize
    @array = [%w[1 2 3], %w[4 5 6], %w[7 8 9]]
    @space_used = 0
  end

  def register_play(row, column, letter)
    @array[row][column] = letter
  end
end