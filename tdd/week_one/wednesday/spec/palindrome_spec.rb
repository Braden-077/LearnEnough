# frozen_string_literal: true 

require 'palindrome'

describe String do
  describe '#palindrome?' do
    it 'works for racecar' do
      expect('RaCeCaR'.palindrome?).to eq true
    end

    it 'returns false when given a false case' do
      expect('bruh'.palindrome?).to eq false
    end
  end
end