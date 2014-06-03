class Hand
  #to represent the player's and dealer's hand.
  #This class will need to determine the best score based on the cards that have been dealt.
  def deal(deck)
    card = deck.shuffle.sample
    deck.delete(deck)
    puts card
  end

  def deal_player_hand

  end

  def deal_dealer_hand

  end
end
