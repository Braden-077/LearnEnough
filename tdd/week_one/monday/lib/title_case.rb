# frozen_string_literal: true

class TitleCase
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def make_title
    word_list = %w(a of and the in)

    downcased_words = title.downcase.split(' ')

    capitalized_words = downcased_words.map.with_index do |word, index|
      if index == 0 || !word_list.include?(word)
        word.capitalize
      else
        word
      end
    end
    capitalized_words.join(' ')
  end
end