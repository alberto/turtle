class NullCommand
  def execute turtle
  end
end

class MoveCommand
  def initialize distance
    @distance = distance
  end

  def execute turtle
    turtle.move @distance
  end
end

class MoveBackCommand
  def initialize distance
    @commands = [RotateCommand.new(180), MoveCommand.new(distance), RotateCommand.new(180)]
  end

  def execute turtle
    @commands.each { |command| command.execute turtle }
  end
end

class RotateCommand
  def initialize degrees
    @degrees = degrees
  end

  def execute turtle
    turtle.rotate @degrees
  end
end

class RepeatCommand
  def initialize repetitions, commands
    @repetitions = repetitions
    @commands = commands
  end

  def execute turtle
    @repetitions.times do
      @commands.each {|command| command.execute turtle }
    end
  end
end
