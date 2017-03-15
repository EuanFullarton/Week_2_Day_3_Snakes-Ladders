class Dice

  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def roll
    @sides.shuffle!()
    roll = @sides[1]
    return roll
  end

end