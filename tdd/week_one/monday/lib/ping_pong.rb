# frozen_string_literal: true 

class PingPong
  def initialize
    
  end

  def play(num)
    (1..num).to_a.map do |x|
      if x % 5 == 0 && x % 3 == 0 
        'ping-pong'
      elsif x % 5 == 0 
        'pong'
      elsif x % 3 == 0 
        'ping'
      else
        x
      end
    end
  end
end