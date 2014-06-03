class Hand
  attr_reader :hand
  #to represent the player's and dealer's hand.
  #This class will need to determine the best score based on the cards that have been dealt
  def initialize
    @hand = []
  end

  def deal_card(deck)
    @hand << deck.pop
  end

end
