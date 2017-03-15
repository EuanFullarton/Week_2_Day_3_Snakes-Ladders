class Game

  attr_reader

  def initialize(players, dice, board )
    @players = players
    @dice = dice
    @board = board
  end

  def take_turn(players)
    for player in @players
      player.move_position(@dice)
      players.ladders
      print player.position
    end

  end

end