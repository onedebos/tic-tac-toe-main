# frozen_string_literal: true

require_relative 'player.rb'

# class tic-tac-toe game
class Board
  attr_reader :state, :first_row, :second_row, :third_row
  attr_accessor :move

  def initialize
    @state = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
    @move = 0
  end

  def show_board
    @first_row = " #{@state[1]} | #{@state[2]} | #{@state[3]} "
    @second_row = " #{@state[4]} | #{@state[5]} | #{@state[6]} "
    @third_row = " #{@state[7]} | #{@state[8]} | #{@state[9]} "
    @breaker = '---|---|---'

    p @first_row
    p @breaker
    p @second_row
    p @breaker
    p @third_row
  end

  def is_move_valid?(current_position)
    @state[current_position.to_i].is_a?(Integer) && (1..9).include?(current_position.to_i) ? true : false
  end

  def add_move(position, symbol)
    return nil unless position.is_a? Integer

    @state[position] = symbol
    @move += 1

    if win?
      1
    elsif draw?
      -1
    else
      0
    end
  end

  def win?
    winning_diagonal? || winning_row? || winning_column?
  end

  def winning_diagonal?
    left_diagonal = [@state[1], @state[5], @state[9]].uniq.length
    right_diagonal = [@state[3], @state[5], @state[7]].uniq.length
    true if [left_diagonal, right_diagonal].include?(1)
  end

  def winning_column?
    left_column = [@state[1], @state[4], @state[7]].uniq.length
    right_column = [@state[3], @state[6], @state[9]].uniq.length
    center_column = [@state[2], @state[5], @state[8]].uniq.length

    true if [left_column, center_column, right_column].include?(1)
  end

  def winning_row?
    top_row = [@state[1], @state[2], @state[3]].uniq.length
    center_row = [@state[4], @state[5], @state[6]].uniq.length
    bottom_row = [@state[7], @state[8], @state[9]].uniq.length
    true if [top_row, bottom_row, center_row].include?(1)
  end

  def draw?
    @move == 9
  end
end
