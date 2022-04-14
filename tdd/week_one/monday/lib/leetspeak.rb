# frozen_string_literal: true 

class Leetspeak
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def word_play
    word.gsub(
  /([EeIOo]|(?<!\b)[Ss])/,
  'E' => '3',
  'e' => '3',
  'I' => '1',
  'O' => '0',
  'o' => '0',
  's' => 'z',
  'S' => 'z'
)
  end
end