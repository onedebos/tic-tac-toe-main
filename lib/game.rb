class Game
  def which_player?
    @current_player == 1 ? @current_player = @player_2 : current_player = @player_1
  end

   def player_input
     puts "Your turn, #{@current_player.name}. Pick a cell by
     choosing a number between 1-9"
     input = gets.chomp.to_i
     if input.between?(1,9)
        input-1
     else
        puts " You need to enter a number between 1 and 9"
     end
   end
end
