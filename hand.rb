class Hand
  #to represent the player's and dealer's hand.
  #This class will need to determine the best score based on the cards that have been dealt
  def initialize(deck_array)
    @deck_array = deck_array
  end

  def deal_player_hand(deck)
    card_1 = deck.draw!
    card_2 = deck.draw!
    arr = [card_1, card_2]
    arr
  end

  def deal_dealer_hand

  end

  def score

  end
end
