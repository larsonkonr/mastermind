class CLI
  attr_reader :command, :printer

  def initialize
    @command = ""
    @printer = Printer.new
  end

  def start
    printer.welcome
    until finished?
      printer.command
      @command = gets.strip
      process_initial_commands
    end
    printer.exit
  end

  def process_initial_commands
    case
    when play?
      game = Game.new(printer)
      game.play
    when instructions?
      printer.game_instructions
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def finished?
    command == "q" || command == "quit"
  end
end
