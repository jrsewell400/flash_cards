require 'minitest/autorun'
require 'minitest/pride'
require '../lib/card'
require '../lib/deck'
require "pry"

class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    assert_instance_of Card, card_1
    assert_instance_of Card, card_2
    assert_instance_of Card, card_3
  end

  def test_it_has_cards
    # Setting all variables below to new instance of a class, with question, answer, and category
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    # Setting cards variable equal to array of card objects
    cards = [card1, card2, card3]
    # Setting new_deck variable equal to new instance of deck, and passing cards variable thru as an argument
    new_deck = Deck.new(cards)

    assert_instance_of Deck, new_deck
  end

  def test_it_has_a_deck
    # Setting all variables below to new instance of a class, with question, answer, and category
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    # Setting cards variable equal to array of card objects

    cards = [card1, card2, card3]

    new_deck = Deck.new(cards)
    assert_equal "Juneau", new_deck.cards[0].answer
  end

  def test_it_counts_cards
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card1, card2, card3]
    new_deck = Deck.new(cards)

    assert_equal 3, new_deck.count
  end

  def test_cards_in_category
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card1, card2, card3]
    new_deck = Deck.new(cards)

    assert_equal 2, new_deck.cards_in_category(:STEM).count
    assert_equal 1, new_deck.cards_in_category(:Geography).count
    assert_equal 0, new_deck.cards_in_category("Pop Culture").count
  end

end
