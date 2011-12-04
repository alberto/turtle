class Orientation
  def initialize degrees
    @degrees = degrees
  end

  def add degrees
    @degrees = (@degrees + degrees + 360) % 360
  end

  def x_vector
    return 1 if @degrees == 45 or @degrees == 90 or @degrees == 135
    return 0 if @degrees == 0 or @degrees == 180
    return -1
  end

  def y_vector
    return 0 if @degrees == 90 or @degrees == 270
    return 1 if @degrees == 135 or @degrees == 180 or @degrees == 225
    return -1
  end

  def to_s
    return @degrees
  end
end