# frozen_string_literal: true 

require 'allergy'

describe Allergy do
  describe '#list_allergies' do
    it 'returns eggs when given 1' do
      a = Allergy.new(1)
      expect(a.list_allergies).to eq ['eggs']
    end

    it 'returns eggs and peanuts for 3' do
      a = Allergy.new(3)
      expect(a.list_allergies).to eq ['eggs', 'peanuts']
    end

    it 'returns peanuts when given 2' do
      a = Allergy.new(2)
      expect(a.list_allergies).to eq ['peanuts']
    end
    
    it 'returns shellfish when given 4' do
      a = Allergy.new(4)
      expect(a.list_allergies).to eq ['shellfish']
    end

    it 'returns strawberries when given 8' do
      a = Allergy.new(8)
        expect(a.list_allergies).to eq ['strawberries']
    end

    it 'returns tomatoes when given 16' do
      a = Allergy.new(16)
      expect(a.list_allergies).to eq ['tomatoes']
    end
    
    it 'returns chocolate when given 32' do
      a = Allergy.new(32)
      expect(a.list_allergies).to eq ['chocolate']
    end

    it 'returns pollen when given 64' do
      a = Allergy.new(64)
      expect(a.list_allergies).to eq ['pollen']
    end

    it 'returns cats when given 128' do
      a = Allergy.new(128)
      expect(a.list_allergies).to eq ['cats']
    end

    it 'returns multiple allergies when given 193' do
      a = Allergy.new(193)
      expect(a.list_allergies).to eq ["eggs", "pollen", "cats"]
    end
  end
end