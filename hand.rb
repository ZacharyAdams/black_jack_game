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

  def score
    score = 0
    ace_counter = 0
    hand.each do |card|
      if card.face_card?
        score += 10
      elsif card.ace?
        score += 11
        ace_counter += 1
      else
        score += card.rank.to_i
      end
    end
    while score > 21 && ace_counter > 0
      score -= 10
      ace_counter -= 1
    end
    score
  end

  def display_hand(player_or_dealer) # Pass in "player" or "dealer" in main part of program
    hand.each do |card|
      puts "#{player_or_dealer.capitalize} was dealt #{card.rank}#{card.suit}"
    end
    puts "Score: #{self.score}"
  end

end
