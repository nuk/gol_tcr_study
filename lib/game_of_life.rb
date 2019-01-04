class GameOfLife
  attr_reader :board
  def initialize(board)
    @board = board
  end

  def next
    @board[0][0] = '.'
  end
end
