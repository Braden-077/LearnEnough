# frozen_string_literal: true 

require 'find_replace'

describe String do
  describe '#find_and_replace' do
    it 'works for cats' do
      expect('I walk my cat to the cathedral.'.find_and_replace('cat', 'dog')).to eq 'I walk my dog to the doghedral.'
    end

    it 'works for you' do
      expect('You found the treasure. You\'ll keep it.'.find_and_replace('You', 'I')).to eq 'I found the treasure. I\'ll keep it.'
    end

    it 'works for the world' do
      expect('Hello, world!'.find_and_replace('world', 'universe'.capitalize)).to eq 'Hello, Universe!' 
    end

    it 'works for names' do
      expect('Hello, Reader!'.find_and_replace('Reader', 'braden'.capitalize)).to eq 'Hello, Braden!'
    end
  end
end