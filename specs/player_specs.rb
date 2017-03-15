require ('minitest/autorun')
require ('minitest/rg')
require_relative('../dice')
require_relative('../player')


class TestPlayer < MiniTest::Test

  def setup
    @dice = Dice.new([1,2,3,4,5,6])
    @player1 = Player.new("James", 100)
    @player2 = Player.new("Euan", 20)
    @player3 = Player.new("Ralf", 45)
  end

  def test_move_position
    original = 100
    refute_equal(original, @player1.move_position(@dice))
  end

  def test_win
    assert_equal("You win", @player1.win(@position))
  end

  def test_snake
    assert_equal(10, @player2.snake(@position))
  end

  def test_ladder
    assert_equal(51, @player3.ladder(@position))
  end
end