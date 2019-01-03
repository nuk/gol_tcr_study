require 'spec_helper'
require 'game_of_life'

describe GameOfLife do
  describe '#init' do
    it 'stores informed configuration' do
      board = [['.']]
      game = GameOfLife.new board
      expect(game.board).to eq board
    end
  end

  describe '#next' do
    context 'alone cells' do
      it 'keeps a dead board dead' do
        game = GameOfLife.new [['.']]
        game.next
        expect(game.board).to eq [['.']]
      end

      it 'kills a lonely cell' do
        game = GameOfLife.new [['*']]
        game.next
        expect(game.board).to eq [['.']]
      end

      it 'kills a pair of cells as well' do
        game = GameOfLife.new [['*']]
        game.next
        expect(game.board).to eq [['.']]
      end
    end
  end
end
