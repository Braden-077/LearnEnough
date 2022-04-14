# frozen_string_literal: true 

require 'leetspeak'

describe Leetspeak do
  it('replaces every "e" in a string with a "3"') do
    leetspeak = Leetspeak.new("elephant")
    expect(leetspeak.word_play).to(eq("3l3phant"))
  end

 it('replaces every "o" in a string with a "0"') do
    leetspeak = Leetspeak.new("boo boo")
    expect(leetspeak.word_play).to(eq("b00 b00"))
  end

 it('replaces every "I" in a string with a "1"') do
    leetspeak = Leetspeak.new("I like Ike")
    expect(leetspeak.word_play).to(eq("1 lik3 1k3"))
  end

 it('replaces every "s" in a string with a "z"') do
    leetspeak = Leetspeak.new("roses")
    expect(leetspeak.word_play).to(eq("r0z3z"))
  end

  it('does NOT replace the first letter when it is an s') do
    leetspeak = Leetspeak.new("sassafrass")
    expect(leetspeak.word_play).to(eq("sazzafrazz"))
  end

  it('replaces letters correctly in a string of words') do
    leetspeak = Leetspeak.new('I scream you scream we all scream for raspberry ice cream.')
    expect(leetspeak.word_play).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am."))
  end
end