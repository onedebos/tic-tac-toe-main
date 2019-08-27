class Player #:nodoc:
  attr_reader :letter_assigned
  attr_accessor :moves
  attr_reader :name

  def initialize(name, letter_assigned)
    @name = name
    @letter_assigned = letter_assigned
    @moves = ''
  end
end