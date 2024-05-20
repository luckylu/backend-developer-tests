require "./base_player.rb"

class YourPlayer < BasePlayer
  def next_point(time:)
    # Implement your strategy here.
    if name == "player1"
      if first_move
        @move = {
          row: 0,
          col: 0,
        }
        self.first_move = false
      else
        if @move[:row].even?
          if @move[:col] + 1 <= grid.max_col
            @move = {
              row: @move[:row],
              col: @move[:col] + 1,
            }
          else
            @move = {
              row: @move[:row] + 1,
              col: @move[:col],
            }
          end
        else
          if @move[:col] - 1 >= 0
            @move = {
              row: @move[:row],
              col: @move[:col] - 1,
            }
          else
            @move = {
              row: @move[:row] + 1,
              col: @move[:col],
            }
          end
        end
      end
      # elsif name == 'player2'
      #   if first_move
      #     @move = {
      #       row: grid.max_row,
      #       col: grid.max_col
      #     }
      #     self.first_move = false
      #   else

      #   end

    end
    @move
  end

  def grid
    game.grid
  end
end
