require 'spec_helper'
require 'game_of_life'

describe GameOfLife do
  describe 'initialize board' do
    it 'copies board' do
      game = GameOfLife.new [['.']]
      expect(game.board).to eq [['.']]
    end
  end

  describe 'kills lonely cells' do
    it 'keeps a dead cell dead' do
      game = GameOfLife.new [['.', '.']]
      game.next
      expect(game.board).to eq [['.', '.']]
    end
    
    it 'kills a lonely cell' do
      game = GameOfLife.new [['*']]
      game.next
      expect(game.board).to eq [['.']]
    end
  end
end
