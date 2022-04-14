# frozen_string_literal: true 

require 'coin_combination'

describe Integer do
  describe '#coin_combination' do
    it 'gives me a quarter' do
      expect(25.coin_combination[:quarters]).to eq 1
    end

    it 'gives me a dime' do
      expect(10.coin_combination[:dimes]).to eq 1
    end

    it 'gives me a nickel' do
      expect(5.coin_combination[:nickels]).to eq 1
    end

    it 'gives me a penny' do
      expect(1.coin_combination[:pennies]).to eq 1
    end

    it 'works for a dollar' do
      expect(100.coin_combination[:quarters]).to eq 4
    end
  end
end