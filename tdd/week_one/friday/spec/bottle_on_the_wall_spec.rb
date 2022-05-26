# frozen_string_literal: true 

require 'bottle_on_the_wall'

describe Integer do
  describe '#bottles' do

    it 'works for 1' do
      expect(1.bottles).to eq "1 bottle of coke on the wall. 1 bottle of coke, Take it down, drink it down! No more bottles of coke on the wall, no more bottles of coke. Let's head to the store to buy some more! Woo hoo! More coke!"
    end

    it 'works for 2' do
      expect(2.bottles).to eq "2 bottles of coke on the wall, 2 bottles of coke. Take one down, pass it around, one bottle of coke on the wall. 1 bottle of coke on the wall. 1 bottle of coke, Take it down, drink it down! No more bottles of coke on the wall, no more bottles of coke. Let's head to the store to buy some more! Woo hoo! More coke!"
    end
  end
end