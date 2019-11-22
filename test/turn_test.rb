require 'minitest/autorun'
require 'minitest/pride'
require '../lib/turn'
require '../lib/card'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_instance_of Card, card
    assert_instance_of Turn, turn
  end

  def test_if_incorrect
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    assert_equal "Mercury", card.answer
    assert_equal "Saturn", turn.guess
  end

end
