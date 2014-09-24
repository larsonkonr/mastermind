class Game
  attr_reader :guess,
              :turns,
              :correct_sequence,
              :printer,
              :command,
              :sequence_validator

  def initialize(printer = Printer.new)
    @turns              = 1
    @printer            = printer
    @command            = ""
    @correct_sequence   = SequenceGenerator.sequence
    @sequence_validator = SequenceValidator.new(guess, correct_sequence)
  end

  def play
    p "Here is the sequence: #{correct_sequence}"
    printer.game_intro
    until win? || exit?
      printer.turn(turns)
      printer.command_request
      @command = gets.strip
      process_game_turn
    end
  end

  def process_game_turn
    case
    when instructions?
      printer.instruction
    else
      add_turn
      @guess = command.split("")
      sequence_validator = SequenceValidator.new(@guess, correct_sequence)
      correct_colors    = sequence_validator.correct_colors
      correct_positions = sequence_validator.correct_positions
      case
      when win?
        printer.win
      else
        puts "Correct positions: #{correct_positions}"
        puts "Correct colors: #{correct_colors}"
      end
    end
  end

  def add_turn
    @turns += 1
  end

  def win?
    command.split("") == correct_sequence
  end

  def exit?
    command == "q" || command == "quit"
  end

  def instructions?
    command == "i"
  end
end
