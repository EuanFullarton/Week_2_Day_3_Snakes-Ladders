class Board


  def initialize(no_of_squares, ladders, position)
    @no_of_squares = no_of_squares
    @ladders = ladders
    @position = position 
  end

  # def puts_squares
  #   print @no_of_squares
  # end

  def ladders
    for ladder in @ladders
      if ladder[0] == @position
        @position = ladder[1]
        return @position
      end
    end
    return @position
  end
end
