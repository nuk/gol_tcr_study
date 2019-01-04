class GameOfLife
  attr_reader :board
  def initialize(board)
    @board = board
    @rows = board.size
    @cols = board.first.size
  end

  def next
    @board = @board.map.with_index do |row, y|
      row.map.with_index { |cell, x| next_cell x, y }
    end
  end

  def next_cell x, y
    if board[y][x - 1] == '*' && board[y][x + 1] == '*'
      '*'
    else
      '.'
    end
  end  
end
