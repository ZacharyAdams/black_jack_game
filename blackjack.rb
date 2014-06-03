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
    deck_array
  end

  def shuffle
    card_deck.shuffle!
  end
end



class Hand
  #to represent the player's and dealer's hand.
  #This class will need to determine the best score based on the cards that have been dealt.
  def player_hand

  end

  def dealer_hand

  end

#   def score
#     total = 0
#     ace_counter = 0

#     hand.each do |card|
#     # Strip suit
#     card = card[0..-2]
#     if card = "K", "Q", "J"
#       value = 10
#     elsif card = "A"
#       value = 11
#       ace_counter += 1
#       end
#     end
#     total += value

#     if total > 21 && ace_counter > 0
#       total -= 10
#       ace_counter -= 1
#     end
#     total
#   end
end


#grab a card from the deck and give it to the player and pull it from the array deck modifiying the deck method


# puts "Welcome to SaZa! Blackjack!\n\n"
# puts "Player was dealt #{Deck.card_deck}\n"
# puts "Player was dealt #{Deck.card_deck}\n"
# puts "Player Score: #{Hand.score}\n\n"
# puts "Hit or stand (h/s)"
# gets.chomp
# puts "Player Score: #{Hand.score}\n\n\n"
# puts "Dealer was dealt #{Deck.card_deck}\n"
# puts "Dealer was dealt #{Deck.card_deck}\n"
# puts "Dealer Score: #{Hand.score}\n\n"
# puts "Hit or stand (h/s)"
# gets.chomp
# puts "Dealer Score: #{Hand.score}\n\n\n"
# puts "#{conditional(win or lose)}"



