require 'pry'
require_relative 'deck'
require_relative 'hand'
require_relative 'card'
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





#grab a card from the deck and give it to the player and pull it from the array deck modifiying the deck method
duck = Deck.new
hand = Hand.new(duck)
puts "Hand: #{hand.deal_player_hand(duck)}"





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
