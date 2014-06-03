require 'pry'
require 'io/console'
require_relative 'deck'
require_relative 'hand'
require_relative 'card'


# TODO fix ace scoring system
def score(hand)
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










def prompt_for_move
  puts "Hit or stand? (h/s)"
  puts
  user_input = STDIN.getch
  user_input
end


deck = Deck.new
deck.shuffle_deck
player_hand = Hand.new
dealer_hand = Hand.new
# while !deck.deck_array.empty?
  player_win_count = 0
  dealer_win_count = 0

  2.times do
    player_hand.deal_card(deck.deck_array)
  end

  puts "Welcome to SaZa! Blackjack!\n\n"

  puts "Player was dealt #{player_hand.hand[0].rank}#{player_hand.hand[0].suit}"
  puts "Player was dealt #{player_hand.hand[1].rank}#{player_hand.hand[1].suit}"
  puts "Player score: #{score(player_hand.hand)}"

  user_input = prompt_for_move

  while user_input == 'h' && score(player_hand.hand) < 21
    player_hand.deal_card(deck.deck_array)
    puts "Player was dealt #{player_hand.hand.last.rank}#{player_hand.hand.last.suit}"
    puts "Player score: #{score(player_hand.hand)}"
    puts
    if score(player_hand.hand) > 21
      puts "Player bust! You lose.\n\n"
      dealer_win_count += 1
      break
    end
    user_input = prompt_for_move
    puts
  end

    while score(dealer_hand.hand) < 17
      dealer_hand.deal_card(deck.deck_array)
      puts "Dealer was dealt #{dealer_hand.hand.last.rank}#{player_hand.hand.last.suit}"
    end
    puts "Dealer score: #{score(dealer_hand.hand)}"
    puts

    if dealer_win_count == 0
      if score(dealer_hand.hand) > 21
      puts "Dealer bust! You win."
      puts
      end
    end

    if score(player_hand.hand) > score(dealer_hand.hand)
      puts "You win!"
    elsif score(player_hand.hand) < score(dealer_hand.hand)
      puts "You lose."
    else
      puts "Push"
    end
# end
