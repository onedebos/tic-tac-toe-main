# frozen_string_literal: true

require './lib/board'

RSpec.describe Board do
  let(:board) { Board.new }

  describe '#register_play' do
    
    it 'Register letter to the position specified in a two dimensional array.' do
      letter = 'X'
      row = 1
      column = 1
      board.register_play(row, column, letter)
      expect(board.array[row][column]).to eql(letter)
    end

    it 'Does not register another letter in the position specified in a two dimensional array.' do
      letter = 'O'
      row = 2
      column = 2
      board.register_play(row, column, letter)
      expect(board.array[row][column]).not_to eql('X')
    end
  end
end