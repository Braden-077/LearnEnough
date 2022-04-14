# frozen_string_literal: true 

require 'nums_to_word'
require 'pry'

class TestClass
  include NumToWord
end

describe NumToWord do
  subject { TestClass.new }
  
  describe '#convert_num' do
    it 'converts this 3 accordingly' do
      expect(subject.convert_num('3')).to eq 'three'
    end

    it 'works for 1' do
      expect(subject.convert_num('1')).to eq 'one'
    end

    it 'works for 2' do
      expect(subject.convert_num('2')).to eq 'two'
    end

    it 'works for 3' do
      expect(subject.convert_num('3')).to eq 'three'
    end

    it 'works for 4' do
      expect(subject.convert_num('4')).to eq 'four'
    end

    it 'works for 5' do
      expect(subject.convert_num('5')).to eq 'five'
    end

    it 'works for 6' do
      expect(subject.convert_num('6')).to eq 'six'
    end

    it 'works for 7' do
      expect(subject.convert_num('7')).to eq 'seven'
    end

    it 'works for 8' do
      expect(subject.convert_num('8')).to eq 'eight'
    end

    it 'works for 9' do
      expect(subject.convert_num('9')).to eq 'nine'
    end
  end

  describe '#convert_hundreds' do
    it 'works for 100' do
      expect(subject.convert_hundreds('1')).to eq 'one hundred'
    end

    it 'works for 200' do
      expect(subject.convert_hundreds('2')).to eq 'two hundred'
    end

    it 'works for 300' do
      expect(subject.convert_hundreds('3')).to eq 'three hundred'
    end

    it 'works for 400' do
      expect(subject.convert_hundreds('4')).to eq 'four hundred'
    end

    it 'works for 500' do
      expect(subject.convert_hundreds('5')).to eq 'five hundred'
    end

    it 'works for 600' do
      expect(subject.convert_hundreds('6')).to eq 'six hundred'
    end

    it 'works for 700' do
      expect(subject.convert_hundreds('7')).to eq 'seven hundred'
    end

    it 'works for 800' do
      expect(subject.convert_hundreds('8')).to eq 'eight hundred'
    end

    it 'works for 900' do
      expect(subject.convert_hundreds('9')).to eq 'nine hundred'
    end
  end

  describe '#convert_middle' do
    it 'works for 10' do
      expect(subject.convert_middle('1', '0')).to eq 'ten'
    end

    it 'works for 11' do
      expect(subject.convert_middle('1', '1')).to eq 'eleven'
    end

    it 'works for 12' do
      expect(subject.convert_middle('1', '2')).to eq 'twelve'
    end

    it 'works for 13' do
      expect(subject.convert_middle('1', '3')).to eq 'thirteen'
    end

    it 'works for 14' do
      expect(subject.convert_middle('1', '4')).to eq 'fourteen'
    end

    it 'works for 15' do
      expect(subject.convert_middle('1', '5')).to eq 'fifteen'
    end

    it 'works for 16' do
      expect(subject.convert_middle('1', '6')).to eq 'sixteen'
    end

    it 'works for 17' do
      expect(subject.convert_middle('1','7')).to eq 'seventeen'
    end

    it 'works for 18' do
      expect(subject.convert_middle('1', '8')).to eq 'eighteen'
    end

    it 'works for 19' do
      expect(subject.convert_middle('1', '9')).to eq 'nineteen'
    end

    it 'works for 20' do
      expect(subject.convert_middle('2', '0')).to eq 'twenty'
    end

    it 'works for 30' do
      expect(subject.convert_middle('3', '0')).to eq 'thirty'
    end

    it 'works for 40' do
      expect(subject.convert_middle('4', '0')).to eq 'fourty'
    end

    it 'works for 50' do
      expect(subject.convert_middle('5', '0')).to eq 'fifty'
    end

    it 'works for 60' do
      expect(subject.convert_middle('6', '0')).to eq 'sixty'
    end
    it 'works for 70' do
      expect(subject.convert_middle('7', '0')).to eq 'seventy'
    end

    it 'works for 80' do
      expect(subject.convert_middle('8', '0')).to eq 'eighty'
    end

    it 'works for 90' do
      expect(subject.convert_middle('9', '0')).to eq 'ninety'
    end
  end
  describe '#convert_hundreds' do

    it 'works for 100' do
      expect(subject.convert_hundreds('1')).to eq 'one hundred'
    end

    it 'works for 200' do
      expect(subject.convert_hundreds('2')).to eq 'two hundred'
    end

    it 'works for 300' do
      expect(subject.convert_hundreds('3')).to eq 'three hundred'
    end

    it 'works for 400' do
      expect(subject.convert_hundreds('4')).to eq 'four hundred'
    end

    it 'works for 500' do
      expect(subject.convert_hundreds('5')).to eq 'five hundred'
    end

    it 'works for 600' do
      expect(subject.convert_hundreds('6')).to eq 'six hundred'
    end

    it 'works for 700' do
      expect(subject.convert_hundreds('7')).to eq 'seven hundred'
    end

    it 'works for 800' do
      expect(subject.convert_hundreds('8')).to eq 'eight hundred'
    end

    it 'works for 900' do
      expect(subject.convert_hundreds('9')).to eq 'nine hundred'
    end
  end

  describe '#convert_set' do
    it 'works for 999' do
      expect(subject.convert_set(['9', '9', '9'])).to eq 'nine hundred ninety nine'
    end

    it 'works for 347' do
      expect(subject.convert_set(['7', '4', '3'])).to eq 'three hundred fourty seven'
    end

    it 'works for 1' do
      expect(subject.convert_set(['1'])).to eq 'one'
    end

    it 'works for 2' do
      expect(subject.convert_set(['2'])).to eq 'two'
    end

    it 'works for 3' do
      expect(subject.convert_set(['3'])).to eq 'three'
    end

    it 'works for 4' do
      expect(subject.convert_set(['4'])).to eq 'four'
    end

    it 'works for 5' do
      expect(subject.convert_set(['5'])).to eq 'five'
    end

    it 'works for 6' do
      expect(subject.convert_set(['6'])).to eq 'six'
    end

    it 'works for 7' do
      expect(subject.convert_set(['7'])).to eq 'seven'
    end

    it 'works for 8' do
      expect(subject.convert_set(['8'])).to eq 'eight'
    end

    it 'works for 9' do
      expect(subject.convert_set(['9'])).to eq 'nine'
    end

    it 'works for 10' do
      expect(subject.convert_set(['0','1'])).to eq 'ten'
    end

    it 'works for 11' do
      expect(subject.convert_set(['1','1'])).to eq 'eleven'
    end

    it 'works for 12' do
      expect(subject.convert_set(['2', '1'])).to eq 'twelve'
    end

    it 'works for 13' do
      expect(subject.convert_set(['3','1'])).to eq 'thirteen'
    end

    it 'works for 14' do
      expect(subject.convert_set(['4','1'])).to eq 'fourteen'
    end
    
    it 'works for 15' do
      expect(subject.convert_set(['5','1'])).to eq 'fifteen'
    end

    it 'works for 16' do
      expect(subject.convert_set(['6','1'])).to eq 'sixteen'
    end

    it 'works for 17' do
      expect(subject.convert_set(['7', '1'])).to eq 'seventeen'
    end

    it 'works for 18' do
      expect(subject.convert_set(['8', '1'])).to eq 'eighteen'
    end

    it 'works for 19' do
      expect(subject.convert_set(['9', '1'])).to eq 'nineteen'
    end

    it 'works for 20' do
      expect(subject.convert_set(['0', '2'])).to eq 'twenty'
    end

    it 'works for 30' do
      expect(subject.convert_set(['0', '3'])).to eq 'thirty'
    end

    it 'works for 40' do
      expect(subject.convert_set(['0', '4'])).to eq 'fourty'
    end

    it 'works for 50' do
      expect(subject.convert_set(['0', '5'])).to eq 'fifty'
    end

    it 'works for 60' do
      expect(subject.convert_set(['0', '6'])).to eq 'sixty'
    end

    it 'works for 70' do
      expect(subject.convert_set(['0', '7'])).to eq 'seventy'
    end

    it 'works for 80' do
      expect(subject.convert_set(['0', '8'])).to eq 'eighty'
    end

    it 'works for 90' do
      expect(subject.convert_set(['0', '9'])).to eq 'ninety'
    end

    it 'works for 100' do
      expect(subject.convert_set(['0', '0', '1'])).to eq 'one hundred'
    end

    it 'works for 201' do
      expect(subject.convert_set(['1', '0', '2'])).to eq 'two hundred one'
    end
    
    it 'works for 000' do
      expect(subject.convert_set(['0', '0', '0'])).to eq ''
    end
  end

  describe '#convert_to_words' do
    it 'works for 0' do
      expect(subject.convert_to_words(0)).to eq 'zero'
    end

    it 'works for 1' do
      expect(subject.convert_to_words(1)).to eq 'one'
    end

    it 'works for 12' do
      expect(subject.convert_to_words(12)).to eq 'twelve'
    end

    it 'works for 112' do
      expect(subject.convert_to_words(112)).to eq 'one hundred twelve'
    end

    it 'works for 228' do
      expect(subject.convert_to_words(228)).to eq 'two hundred twenty eight'
    end

    it 'works for 384' do
      expect(subject.convert_to_words(384)).to eq 'three hundred eighty four'
    end

    it 'works for 1000' do
      expect(subject.convert_to_words(1000)).to eq 'one thousand'
    end

    it 'works for 4290' do
      expect(subject.convert_to_words(4290)).to eq 'four thousand two hundred ninety'
    end

    it 'works for 12493' do
      expect(subject.convert_to_words(12493)).to eq 'twelve thousand four hundred ninety three'
    end

    it 'works for 582744' do
      expect(subject.convert_to_words(582744)).to eq 'five hundred eighty two thousand seven hundred fourty four'
    end

    it 'works for 1_000_000' do
      expect(subject.convert_to_words(1_000_000)).to eq 'one million'
    end

    it 'works for 123_456_789_002' do
      expect(subject.convert_to_words(123_456_789_002)).to eq 'one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand two'
    end

    it 'works for 1_000_000_000' do
      expect(subject.convert_to_words(1_000_000_000)).to eq 'one billion'
    end
  end
end