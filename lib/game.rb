class Game
  attr_reader :guess,
              :turns,
              :correct_sequence,
              :printer,
              :command,
              :sequence_validator

  def initialize(printer = Printer.new)
    @turns              = 0
    @printer            = printer
    @command            = ""
    @correct_sequence   = SequenceGenerator.sequence
    @sequence_validator = SequenceValidator.new(guess, correct_sequence)
  end

  def play
    p "Here is the sequence: #{correct_sequence}"
    printer.game_intro
    until win? || exit? || lost?
      add_turn
      printer.command_request
      @command = gets.strip.downcase
      # if @command.invalid_command?
        # else
          process_game_turn
        # end
    end
  end

  def process_game_turn
    case
    when instructions?
      printer.instruction
    when exit?

    else
      @guess = command.split("")
      sequence_validator = SequenceValidator.new(@guess, correct_sequence)
      correct_colors    = sequence_validator.correct_colors
      correct_positions = sequence_validator.correct_positions
      puts "Correct positions: #{correct_positions}"
      puts "Correct colors: #{correct_colors}"
      case
      when win?
        puts "\n"
        puts "Congratulations! You guessed the sequence #{correct_sequence} in #{turns} guess"
        printer.win
      when lost?
        printer.lose
      end
    end
  end

  def add_turn
    @turns += 1
    printer.turn(turns)
  end

  def win?
    command.split("") == correct_sequence
  end

  def exit?
    command == "q" || command == "quit"
  end

  def lost?
    @turns == 10
  end

  def instructions?
    command == "i"
  end

end
