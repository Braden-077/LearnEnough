# frozen_string_literal: true

class Integer
  def bottles
    song = ''
    self.downto(0) do |num| 
      if num == 0
        song += 'No more bottles of coke on the wall, no more bottles of coke. Let\'s head to the store to buy some more! Woo hoo! More coke!'
      elsif num == 1 
        song += '1 bottle of coke on the wall. 1 bottle of coke, Take it down, drink it down! '
      elsif num == 2
        song += '2 bottles of coke on the wall, 2 bottles of coke. Take one down, pass it around, one bottle of coke on the wall. '
      else 
        song += "#{num} bottles of coke on the wall, #{num} bottles of coke. Take one down, pass it around, #{num-1} bottles of coke on the wall. "
      end
    end 
    song
  end
end