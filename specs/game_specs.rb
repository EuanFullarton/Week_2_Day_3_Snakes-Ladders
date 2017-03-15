require ('minitest/autorun')
require ('minitest/rg')
require_relative('../dice')
require_relative('../player')
require_relative('../board')
require_relative('../game')

class TestGame < MiniTest::Test

  def setup
    ladders = [
      [4, 9], [25, 31], [45, 100]]
    snakes = [[15, 8], [87, 75], [99, 2], [54, 43]]
    @player1 = Player.new("James", 0)
    @player2 = Player.new("Euan", 0)
    # @board = Board.new((1..100).to_a, ladders, snakes, @player1.position)
    @players = [@player1, @player2]
    @dice = Dice.new([1,2,3,4,5,6])
    @game = Game.new(@players, @dice, @board)
  end

  def test_take_turn
    original_p1 = @player1.position
    original_p2 = @player2.position
    @game.take_turn(@players)
    refute_equal(original_p1, @player1.move_position(@dice))
    refute_equal(original_p2, @player2.move_position(@dice))

  end


end
