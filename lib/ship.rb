class Ship

  attr_reader :size, :position

  def initialize(size, position)
    raise 'Ship cannot be bigger than 5' if size > 5
    raise 'Ship cannot be smaller than 2' if size < 2
    @size = size
    @position = position
  end

end
