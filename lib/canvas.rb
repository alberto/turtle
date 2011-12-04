class Canvas
  def initialize size
    @size = size
    @canvas = Array.new size * size, "."
  end

  def draw position
    @canvas[position.x + position.y * @size] = "X"
  end

  def write_to file
    @size.times do |y|
      file.puts @canvas[@size*y ... @size*(y+1)].join(' ')
    end

  end
end