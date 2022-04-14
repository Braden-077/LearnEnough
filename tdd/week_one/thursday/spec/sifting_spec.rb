# frozen_string_literal: true 

require 'sifting'

describe Sifter do
  describe '#sift' do
    it 'returns the Prime number for 2' do
      expect(Sifter.sift(2)).to eq [2]
    end

    it 'returns the Prime number for 3' do
      expect(Sifter.sift(3)).to eq [2, 3]
    end

    it 'returns prime numbers to 100' do
      expect(Sifter.sift(100)).to eq  [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    end
  end
end