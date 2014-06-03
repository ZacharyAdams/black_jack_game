class Deck
  attr_reader :deck_array
#to represent a collection of 52 cards.
#When dealing a hand this class can be used to supply the Card objects.
  def initialize
    @suit_array = ["♦","♣","♠","♥"]
    @rank_array = ["K","Q","J","10","9","8","7","6","5","4","3","2","A"]
    @deck_array = make_deck
  end

  def make_deck
    deck = []
    @suit_array.each do |suit|
      @rank_array.each do |rank|
        deck << Card.new(rank, suit)
      end
    end
    deck
  end

  def shuffle_deck
    @deck_array.shuffle!
  end
end
