# frozen_string_literal: true 

require 'queen_attack'

describe Array do
  describe '#queen_attack?' do
    it 'can\'t attack outside of normal expectation' do
      expect([1,1].queen_attack?([2, 3])).to eq false
    end

    it 'can attack diagonally' do
      expect([1,1].queen_attack?([2,2])).to eq true
    end

    it 'can attack horizontally' do
      expect([1,1].queen_attack?([1,2])).to eq true
    end

    it 'can attack vertically' do
      expect([1,1].queen_attack?([2,1])).to eq true
    end
  end
end