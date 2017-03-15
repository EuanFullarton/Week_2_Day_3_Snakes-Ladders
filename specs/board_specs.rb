require ('minitest/autorun')
require ('minitest/rg')
require_relative('../dice')
require_relative('../player')
require_relative('../board')


class TestBoard < MiniTest::Test

  def setup
    ladders = [
      [4, 9], [25, 31], [45, 100]]
    snakes = [[15, 8], [87, 75], [99, 2], [54, 43]]
    
    @player1 = Player.new("James", 4)
    @player2 = Player.new("Euan", 99)
    @board = Board.new((1..100).to_a, ladders, snakes, @player1.position)
    @board2 = Board.new((1..100).to_a, ladders, snakes, @player2.position)
  end

  # def test_puts_squares
  #   assert_equal(1, @board.puts_squares)
  # end

  def test_ladders
    assert_equal(9, @board.ladders)
  end

  def test_snakes
    assert_equal(2, @board2.snakes)
  end

  

end