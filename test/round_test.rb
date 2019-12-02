require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    assert_instance_of
    assert_instance_of
    assert_instance_of
  end

  def test_it_has_a_deck
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal
  end

  def test_it_has_a_new_round
    round = Round.new(deck)

    assert_equal
  end
end

# round.deck
# round.turns
# round.current_card
# new_turn = round.take_turn("Juneau")
# new_turn.class
# new_turn.correct?
# round.turns
# round.number_correct
# round.current_card
# round.take_turn("Venus")
# round.turns.count
# round.turns.last.feedback
# round.number_correct
# round.number_correct_by_category(:Geography)
# round.number_correct_by_category(:STEM)
# round.percent_correct
# round.percent_correct_by_category(:Geography)
# round.current_card
