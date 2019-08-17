# frozen_string_literal: true

def player_input
  turn
  input = gets.chomp.to_i
  if input.between?(1, 9)
    input - 1
  else
    repeat_input
  end
end
