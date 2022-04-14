# frozen_string_literal: true 

class RPS
    
  def outcome(hand1, hand2)
    return  'You tied!' if hand1 == hand2
    
    if hand1.downcase == 'rock' && hand2.downcase == 'scissors'
     true
    elsif hand1.downcase == 'paper' && hand2.downcase == 'rock' 
      true
    elsif hand1.downcase == 'scissors' && hand2.downcase == 'paper'
      true
    else 
      false
    end
  end
end

# To play Rock Paper Scissors, run $ ruby lib/rps_game.rb