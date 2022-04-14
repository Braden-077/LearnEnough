# frozen_string_literal: true 

module NumToWord

  WORD_NUMBERS = {
    '0' => '',
    '1' => 'one',
    '2' => 'two',
    '3' => 'three',
    '4' => 'four',
    '5' => 'five',
    '6' => 'six',
    '7' => 'seven',
    '8' => 'eight',
    '9' => 'nine',
  }

  TEENS = {    
    '0' => 'ten',
    '1' => 'eleven',
    '2' => 'twelve',
    '3' => 'thirteen',
    '4' => 'fourteen',
    '5' => 'fifteen',
    '6' => 'sixteen',
    '7' => 'seventeen',
    '8' => 'eighteen',
    '9' => 'nineteen'
  }

  MIDDLE_NUMS = {
    '0' => '',
    '2' => 'twenty',
    '3' => 'thirty',
    '4' => 'fourty',
    '5' => 'fifty',
    '6' => 'sixty',
    '7' => 'seventy',
    '8' => 'eighty',
    '9' => 'ninety' 
  }

  SUFFIXES = {
    0 => '',
    1 => 'thousand',
    2 => 'million',
    3 => 'billion',
    4 => 'trillion'
  }

  def convert_num(base_num)
    WORD_NUMBERS.fetch(base_num)
  end

  def convert_middle(mid_num, last_num)
    if mid_num == '1'
      TEENS.fetch(last_num)
    elsif mid_num == nil
      ''
    else 
      MIDDLE_NUMS.fetch(mid_num)
    end
  end

  def convert_hundreds(hundreds)
    if hundreds == nil || hundreds == '0'
      ''
    else  
      convert_num(hundreds) + ' hundred'
    end
  end

  def convert_set(set)
    # set => ['4', '5', '7']
    ones, tens, hundreds = set  
    ones_place = tens == '1' ? '' : convert_num(ones)  
    hundreds_place = convert_hundreds(hundreds)
    tens_place = convert_middle(tens, ones)
    (hundreds_place + ' ' + tens_place + ' ' + ones_place).squeeze(' ').strip
  end

  def convert_to_words(nums_to_convert)
    return 'zero' if nums_to_convert.zero?
    nums_to_convert.to_s.split('').reverse.each_slice(3).flat_map.with_index do |set, set_index|
      outcome = convert_set(set) # + ' ' + SUFFIXES.fetch(set_index)
      if outcome == '' || outcome == '000'
        ''
      else
        outcome + ' ' + SUFFIXES.fetch(set_index)
      end
    end
    .reverse.join(' ').squeeze(' ').strip
  end
end

class Integer
  include NumToWord
  
   def convert_to_words
     super(self)
   end
end



# def wordify
# self.to_s.reverse.split('').each_slice(3)
#   .flat_map.with_index do |set, set_index|
#     if set[1] == '1'
#       hundreds = WORD_NUMBERS[set[2] || '0'][2]
#       [TEENS[set[0]], hundreds]
#     else
#       [SUFFIXES.fetch(set_index)] +
#       set.map.with_index do |number, number_index|
#         WORD_NUMBERS[number][number_index]
#       end
#     end
#   end
# .reverse.delete_if {|element| element.to_s.empty?}.join(' ')
# end