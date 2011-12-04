require_relative "command"

class CommandParser
  def parse input
    command_parts = input.split(' ')
    command = command_parts[0]
    amount = Integer(command_parts[1])
    if command == "FD"
      MoveCommand.new(amount)
    elsif command == "BK"
      MoveBackCommand.new(amount)
    elsif command == "RT"
      RotateCommand.new(amount)
    elsif command == "LT"
      RotateCommand.new(amount * -1)
    elsif command == "REPEAT"
      RepeatCommand.new(amount, parse_commands_in(command_parts[3..-2]))
    else
      NullCommand.new
    end
  end

  def parse_commands_in tokens
    commands = []
    while (not tokens.empty?) do
      commands << self.parse(tokens.shift(2).join(' '))
    end
    commands
  end
end