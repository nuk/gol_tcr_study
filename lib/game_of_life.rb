class GameOfLife
  attr_reader :board
  def initialize(board)
    @board = board
    @rows = board.size
    @cols = board.first.size
  end

  def next
    new_board = @rows.times.map { |row| @cols.times.map { |col| '.' } }
    @board = new_board
  end
end
