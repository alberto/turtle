class Position
  attr_reader :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def step orientation
    x = @x + orientation.x_vector
    y = @y + orientation.y_vector
    Position.new(x,y)
  end

  def to_s
    "#{@x},#{@y}"
  end
end