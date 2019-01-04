require 'spec_helper'
require 'game_of_life'

describe GameOfLife do
  describe 'initialize board' do
    it 'copies board' do
      game = GameOfLife.new [%w[.]]
      expect(game.board).to eq [%w[.]]
    end
  end

  describe 'kills lonely cells' do
    it 'keeps a dead cell dead' do
      game = GameOfLife.new [%w[. .]]
      game.next
      expect(game.board).to eq [%w[. .]]
    end
    
    it 'kills a lonely cell' do
      game = GameOfLife.new [%w[. * .]]
      game.next
      expect(game.board).to eq [%w[. . .]]
    end
  end
end
