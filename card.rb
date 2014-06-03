class Card
  attr_reader :suit, :rank
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end
  #to represent an individual playing card. This class should contain the suit
  #and the value and provide methods for determining what type of card it is (e.g. face card or ace).
end
