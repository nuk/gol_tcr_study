class GameOfLife
  attr_reader :board
  def initialize(board)
    @board = board
    @rows = board.size
    @cols = board.first.size
  end

  def next
    @board = @board.map { |row| row.map { |cell| '.'  }  }
  end
end
