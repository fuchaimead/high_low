require_relative 'deck'
require_relative 'card'

class HighLow
  def initialize 
    @deck = Deck.new
    game
  end 

  def game
    puts "Welcome to High Low"
    puts "How much would you like to bet?"
    bet = gets.to_i 
    first_card = @deck.cards.sample 
    puts "#{first_card.rank} of #{first_card.suit}"
    puts "Is the next card higher or lower?"
    answer = gets.strip
    second_card = @deck.cards.sample
    puts "The second card is #{second_card.rank} of #{second_card.suit}"
    if answer == "higher"
      if first_card.rank > second_card.rank
        puts "You lose"
      else 
        puts "You win"
      end
    elsif answer == "lower"
      if first_card.rank < second_card.rank
        puts "You win"
      else 
        puts "You lose"
      end
    end 
    game
  end 

end 

HighLow.new 