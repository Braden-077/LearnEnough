# frozen_string_literal: true 

require 'scrabble_score'

describe String do
  describe '#scrabble' do
    it "returns a scrabble score for a letter" do
      expect("a".scrabble).to eq(1)
    end

    it 'gives back 0 for empty strings' do
      expect(''.scrabble).to eq(0)
    end

    it 'works with long words' do
      expect('Supercalifragilisticexpialidocious'.scrabble).to eq 56
    end

    it 'returns 0 for whitespace' do
      expect('           '.scrabble).to eq(0)
    end

    it 'works with long words AND lots of spaces' do
      expect('                  Supercalifragilisticexpialidocious                                '.scrabble).to eq 56
    end
  end
end