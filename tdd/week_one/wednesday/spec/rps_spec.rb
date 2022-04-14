# frozen_string_literal: true 

require 'rps'

describe RPS do
  describe '#outcome' do

  let (:game) { RPS.new }
  
  #WINS
    it 'returns true if rock is the object and scissors is the argument' do
      expect(game.outcome('rock', 'scissors')).to eq true
    end

    it 'returns true if paper is the object and rock is the argument' do
      expect(game.outcome('paper', 'rock')).to eq true
    end

    it 'returns true if scissors is the object and paper is the argument' do
      expect(game.outcome('scissors', 'paper')).to eq true
    end
    
    #LOSSES
    it 'returns false - paper and scissors' do
      expect(game.outcome('paper', 'scissors')).to eq false
    end
    
    it 'return false if scissors is the object and rock is the arguemnt' do 
        expect(game.outcome('scissors', 'rock')).to eq false
    end
    
    it 'returns false if rock is object and paper is the argument' do 
        expect(game.outcome('rock', 'paper')).to eq false 
    end

  #TIES
  
    it 'returns false if it is a tie' do 
        expect(game.outcome('rock', 'rock')).to eq 'You tied!'
    end
    
    it 'returns false if it is a tie' do 
        expect(game.outcome('paper', 'paper')).to eq 'You tied!' 
    end
  end
end