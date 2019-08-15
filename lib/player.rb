class Player
  attr_accessor :name, :symbol, :fill_cells
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @fill_cells = []
  end
end