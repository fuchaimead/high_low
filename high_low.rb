require_relative 'deck'
require_relative 'card'
require 'pry'
class HighLow
  def initialize 
    @deck = Deck.new
    game
  end 

  def game
    puts "===================="
    puts ""
    puts "Welcome to High Low"
    puts "How much would you like to bet?"
    bet = gets.to_i 
    first_card = @deck.cards.sample 
    card1 = numeric_value(first_card)
    puts "#{first_card.rank} of #{first_card.suit}"
    puts "Is the next card higher or lower?"
    answer = gets.strip
    second_card = @deck.cards.sample
    card2 = numeric_value(second_card)
    puts "The second card is #{second_card.rank} of #{second_card.suit}"
    if answer == "higher"
      if card1 < card2
        puts "You win"
      elsif card1 == card2
        puts "It's a draw"
      else
        puts "You lose"
      end
    elsif answer == "lower"
      if card1 > card2
        puts "You win"
      elsif card1 == card2
        puts "It's a draw"
      else
        puts "You lose"
      end
    else 
      puts "invalid option"
      game
    end 
    game
  end 


 def numeric_value(card)
  faces = { 'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14 }
  begin
    if Integer(card.rank).is_a?(Numeric)
      value = card.rank.to_i
    end
  rescue => e
    value = faces[card.rank]
  end
  value
  end

end 

HighLow.new 