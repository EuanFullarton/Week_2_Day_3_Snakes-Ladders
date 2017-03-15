class Player

  attr_reader :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end

  def move_position(dice)
    @position += dice.roll
  end

  def win(position)
    if @position >= 100
      return "You win"
    end
    return false
  end

  def snake(position)
    if @position == 20
      @position = 10
    end
    return @position
  end

  def ladder(position)
    if @position == 45
      @position = 51
    end
    return @position
  end

end