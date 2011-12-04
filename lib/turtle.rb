require_relative "orientation"
class Turtle
  def initialize position, canvas
    @position = position
    @orientation = Orientation.new 0
    @canvas = canvas
  end

  def move distance
    old_position = @position
    distance.times do
      @position = @position.step @orientation
      @canvas.draw @position
    end
  end

  def rotate degrees
    @orientation.add degrees
  end
end