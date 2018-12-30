# game
class Game
  attr_reader :board

  def initialize(ship_class = Ship, board_class = Board)
    @ship_class = ship_class
    @board_class = board_class
    @board = create_10x10_board
  end

  def add_ship(size, position)
    @ship_class.new(size, position)
  end

  private

  def create_10x10_board
    @board_class.new(10, 10)
  end
end
