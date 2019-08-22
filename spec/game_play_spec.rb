# frozen_string_literal: true

require_relative '../lib/game'

RSpec.describe Board do
  let(:board) { Board.new }
  let(:show_board) { board.show_board }

  it 'has a first row' do
    show_board
    expect(board.first_row).to eql(' 1 | 2 | 3 ')
  end

  it 'has a first row' do
    show_board
    expect(board.first_row).not_to eql(' 4 | 5 | 6 ')
  end

  it 'has a second row' do
    show_board
    expect(board.second_row).to eql(' 4 | 5 | 6 ')
  end

  it 'has a second row' do
    show_board
    expect(board.second_row).not_to eql(' 1 | 2 | 3 ')
  end

  it 'has a third row' do
    show_board
    expect(board.third_row).to eql(' 7 | 8 | 9 ')
  end

  it 'has a third row' do
    show_board
    expect(board.third_row).not_to eql(' 4 | 5 | 6 ')
  end

  describe '#is_move_valid?' do
    it 'accepts a number between 1-9' do
      expect(board.is_move_valid?(1)).to eql(true)
    end
    it 'rejects any number not between 1-9' do
        expect(board.is_move_valid?(10)).to eql(false)
      end
  end
 
  describe '#add_move' do
    it 'adds move' do
      expect(board.add_move(1, 'X')).to be 0
    end

    it 'rejects invalid move' do
      expect(board.add_move('s', 'X')).to be nil
    end

    it 'updates the state' do
      board.add_move(1, 'X')
      expect(board.state[1]).to eql('X')
    end

    it "doesn't update the state" do
      initial_state = board.state
      board.add_move('r', 'X')
      expect(board.state).to eql(initial_state)
    end

    describe "#play" do
      it 'returns true when result == 1 ' do
        expect(board.add_move(1, 'X')).to eql(0)
      end

      it 'returns false when result !== 1 ' do
        expect(board.add_move(0, 'a')).not_to eql(1)
      end
    end

    describe '#draw?' do
      it 'signifies a draw' do
        board.move = 9
        expect(board.draw?).to eql(true)
      end

      it 'only signifies draws' do
        board.move = 5
        expect(board.draw?).to eql(false)
      end
    end
  end
end
