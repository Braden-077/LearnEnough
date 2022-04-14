# frozen_string_literal: true

require_relative "braden_palindrome/version"

module BradenPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-zFILL_IN]/i).join.downcase    
    end
end

class String
  include BradenPalindrome
end

class Integer 
  include BradenPalindrome
end