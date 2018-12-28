class Board

  attr_reader :all_locations

  def initialize(x, y)
    @width = x
    @height = y
    # width/x is numerical, height/y is alphabetical
    @all_locations = setup_board(@width, @height)
  end

  private

  attr_reader :width, :height

  def setup_board(width, height)
    all_locations = []
    for each_letter in width_coords do
      for each_num in height_coords do
        all_locations << define_location(each_letter, each_num)
      end
    end
    all_locations
  end

  def width_coords
    ('a'..'z').to_a[0...width]
  end

  def height_coords
    (1..height).to_a
  end

  def define_location(y_coord, x_coord)
    "#{y_coord}#{x_coord}"
  end

end
