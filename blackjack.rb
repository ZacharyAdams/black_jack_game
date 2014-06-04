require 'pry'
require 'io/console'
require_relative 'deck'
require_relative 'hand'
require_relative 'card'

class Blackjack
  attr_reader :player_hand, :dealer_hand, :deck

  def initialize(player_hand = Hand.new, dealer_hand = Hand.new, deck = Deck.new)
    @player_hand = player_hand
    @dealer_hand = dealer_hand
    @deck = deck
  end

  def prompt_for_move
    puts "Hit or stand? (h/s)"
    puts
    user_input = STDIN.getch
    user_input
  end

  def deal
    2.times do
      player_hand.deal_card(deck.deck_array)
      dealer_hand.deal_card(deck.deck_array)
    end
  end

  def welcome
    puts "Welcome to SaZa! Blackjack!\n\n"
    puts "                    __
               _..-''--'----_.
             ,''.-''| .---/ _`-._
           ,' \\ \\  ;| | ,/ / `-._`-.
         ,' ,',\\ \\( | |// /,-._  / /
         ;.`. `,\\ \\`| |/ / |   )/ /
        / /`_`.\\_\\ \\| /_.-.'-''/ /
       / /_|_:.`. \\ |;'`..')  / /
       `-._`-._`.`.;`.\\  ,'  / /
           `-._`.`/    ,'-._/ /
             : `-/     \\`-.._/
             |  :      ;._ (
             :  |      \\  ` \

              \\         \\   |
               :        :   ;
               |           /
               ;         ,'
              /         /
             /         /
                      /"
  end

  def hit_loop
    player_hand.deal_card(deck.deck_array)
    puts "Player was dealt #{player_hand.hand.last.rank}#{player_hand.hand.last.suit}"
    puts "Player score: #{player_hand.score}"
    puts
  end

end

game = Blackjack.new
game.welcome
game.deck.shuffle_deck
game.deal
game.player_hand.display_hand

user_input = game.prompt_for_move

while user_input == 'h' && game.player_hand.score < 21
  game.hit_loop
  if game.player_hand.score > 21
    puts "Player bust! You lose.\n\n"
    exit 0
  end
  user_input = game.prompt_for_move # FIXME repetitive but works fine
  puts
end

# while score(dealer_hand.hand) < 17
#   dealer_hand.deal_card(deck.deck_array)
#   puts "Dealer was dealt #{dealer_hand.hand.last.rank}#{player_hand.hand.last.suit}"
# end
# puts "Dealer score: #{score(dealer_hand.hand)}"
# puts

# if dealer_win_count == 0
#   if score(dealer_hand.hand) > 21
#   puts "Dealer bust! You win."
#   puts
#   exit 0
#   end
# end

# if score(player_hand.hand) > score(dealer_hand.hand)
#   puts "You win!"
# elsif score(player_hand.hand) < score(dealer_hand.hand)
#   puts "You lose."
# else
#   puts "Push"
# end
