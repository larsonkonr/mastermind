class Game
  attr_reader :guess,
              :turns,
              :sequence,
              :printer,
              :command,
              :sequence_validator

  def initialize(printer = Printer.new)
    @turns              = 1
    @printer            = printer
    @command            = ""
    @sequence           = SequenceGenerator.sequence
    @sequence_validator = SequenceValidator.new
  end

  def play
    p "Here is the sequence: #{sequence}"
    printer.game_intro
    until win? || exit?
      printer.turn(turns)
      printer.command_request
      @command = gets.strip
      # @guess = command
      process_game_turn
    end
  end

  def process_game_turn
    add_turn
    @guess = command.split("")
    sequence_validator.guess = guess
    sequence_validator.sequence = sequence
    correct_colors    = sequence_validator.correct_colors
    correct_positions = sequence_validator.correct_positions
    case
    when exit?
      printer.quit
    # when not_a_proper_guess?
    #   printer.not_a_proper_guess
    when win?
      printer.win
    else
      puts "Correct positions: #{correct_positions}"
    # when invalid_command
    #   printer.invalid_command
    end
  end

  def add_turn
    @turns += 1
  end

  def win?
    command.split("") == sequence
  end

  def exit?
    command == "q" || command == "quit"
  end

  # def not_a_proper_guess?
  #   command != "q" || "i" || "p" || "quit"
  #   printer.not_a_proper_guess
  # end
end
