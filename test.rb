class Card
  def initalize(rank, suit)
    @suit = suit
    @rank = rank
  end
  #to represent an individual playing card. This class should contain the suit
  #and the value and provide methods for determining what type of card it is (e.g. face card or ace).
  def suit
    suit_array = ["♦","♣","♠","♥"]
  end

  def rank
    cards_array = ["K","Q","J","10","9","8","7","6","5","4","3","2","A"]
  end
end

class Deck
#to represent a collection of 52 cards.
#When dealing a hand this class can be used to supply the Card objects.
  def card_deck
    deck_array = []
    Card.new.suit.each do |suit|
      Card.new.rank.each do |rank|
        deck_array << "#{rank}" + "#{suit}"
      end
    end
     puts deck_array
  end

  def shuffle

  end
end

deck = Deck.new
deck.card_deck


