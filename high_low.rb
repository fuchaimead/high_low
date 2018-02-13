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
    
  end 

end 

HighLow.new 