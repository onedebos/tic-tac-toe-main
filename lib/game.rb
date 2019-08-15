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

   def player_move
    move = player_input
    if @board[move] == " "
      @board[move] = @current_player.symbol
      @current_player.fill_cells << move
    else
      puts "This cell is not available."
    end
   end
   
   def player_win?
    conditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    conditions.each do |condition|
        if (conditions - @current_player.fill_cells).empty? 
            puts "#{@current_player.name} wins"
            @end_game = true
        end
     end
     if @player_1.fill_cells.size + @player_2.fill_cells.size >=9
        puts "it's a draw."
        @end_game = true
     end
     @end_game
    end
   end

end
