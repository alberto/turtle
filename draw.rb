require_relative "lib/canvas"
require_relative "lib/turtle"
require_relative "lib/command_parser"
require_relative "lib/position"


file = File.open(ARGV[0])
size = Integer(file.readline)
file.readline

canvas = Canvas.new(size)
middle = size/2
turtle = Turtle.new Position.new(middle, middle), canvas
command_parser = CommandParser.new
while(command_input = file.gets) do
  command = command_parser.parse(command_input)
  command.execute(turtle)
end

canvas.write_to File.new(ARGV[1], "w+")