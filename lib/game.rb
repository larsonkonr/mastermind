class Game
  attr_accessor :guess,
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
    until win? || ending? || lost?
      add_turn
      printer.command_request
      @command = gets.strip.downcase
#      add_turn
      if invalid_command?
        printer.invalid_command
        # process_game_turn
      else
#        add_turn
        process_game_turn
      end
    end
  end

  def process_game_turn
    case
#    when instructions?
#      printer.instruction
    when ending?

    else
#      add_turn
      @guess = command.split("")
      if invalid_guess
      else
      sequence_validator = SequenceValidator.new(@guess, correct_sequence)
      correct_colors     = sequence_validator.correct_colors
      correct_positions  = sequence_validator.correct_positions
      puts "Correct positions: #{correct_positions}"
      puts "Correct colors: #{correct_colors}"
#      add_turn

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
  end

  def add_turn
    @turns += 1
    printer.turn(turns)
  end

  def win?
    command.split("") == correct_sequence
  end

  def ending?
    command == "q" || command == "quit"
  end

  def lost?
    @turns == 10
  end

  def instructions?
    command == "i"
  end

  def valid_command?
    command.length == 4 || command == 'q'
  end

  def invalid_command?
    !valid_command?
    if command.length < 4 && command != "q"
      printer.invalid_guess_not_enough
    end
    if command.length > 4
      printer.invalid_guess_too_many
    end
  end

  # def command_too_small?
  #
  # end
  #
  # def command_too_large?
  #   command.lenght > 4
  # end

  def invalid_guess
    count = @guess.join.scan(/[^rgby]/).count
    if count != 0
    printer.invalid_guess
    @turns -= 1
    end
  end
end
