require ('minitest/autorun')
require ('minitest/rg')
require_relative('../dice')

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new([1,2,3,4,5,6])
  end

  def test_roll
    result = @dice.roll
    included = @dice.sides.include?(result)
    assert_equal(true, included)
  end

end