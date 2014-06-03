class Deck
#to represent a collection of 52 cards.
#When dealing a hand this class can be used to supply the Card objects.
  def initialize
    @deck_array = []
    suit.each do |suit|
      rank.each do |rank|
        @deck_array << Card.new(rank, suit)
      end
    end
    @deck_array.shuffle!
  end

  def suit
    suit_array = ["♦","♣","♠","♥"]
  end

  def rank
    cards_array = ["K","Q","J","10","9","8","7","6","5","4","3","2","A"]
  end

  def draw!
    @deck_array.pop
  end
end
