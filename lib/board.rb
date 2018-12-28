class Board

  attr_reader :all_locations

  def initialize(x, y)
    @x = x
    @y = y
    # width/x is numerical, height/y is alphabetical
    @all_locations = setup_board(@x, @y)
  end

  private

  attr_reader :x, :y

  def setup_board(x, y)
    all_locations = []
    for each_letter in y_coords do
      for each_num in x_coords do
        all_locations << define_location(each_letter, each_num)
      end
    end
    all_locations
  end

  def y_coords
    ('a'..'z').to_a[0...y]
  end

  def x_coords
    (1..x).to_a
  end

  def define_location(y_coord, x_coord)
    "#{y_coord}#{x_coord}"
  end

end
