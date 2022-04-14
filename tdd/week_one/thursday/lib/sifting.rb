# frozen_string_literal: true 

require 'prime'

module Sifter
  def self.sift(num)
    Prime.each(num).to_a
  end
end