# frozen_string_literal: true 
class String
  def palindrome?
    self.downcase == self.reverse.downcase ? true : false
  end
end