# frozen_string_literal: true 

class Allergy
  ALLERGIES = {
    128 => 'cats',
    64 => 'pollen',
    32 => 'chocolate',
    16 => 'tomatoes',
    8 => 'strawberries',
    4 => 'shellfish',
    2 => 'peanuts',
    1 => 'eggs'
  }
  attr_accessor :score
  def initialize(score)
    @score = score
  end

  def list_allergies
    listed_allergens = []
    ALLERGIES.keys.map do |allergen_score|
      if @score >= allergen_score
        listed_allergens.push(ALLERGIES[allergen_score])
        @score -= allergen_score
      end
    end
    listed_allergens.reverse
  end
end

# allergen     score
# eggs         1
# peanuts      2
# shellfish    4
# strawberries 8
# tomatoes     16
# chocolate    32
# pollen       64
# cats         128