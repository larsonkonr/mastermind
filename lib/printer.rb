class Printer
  def welcome
    puts"\n"
    puts'                                           Welcome to                                            '
    puts'    _____     _____    ______________________________________   _____  .___ _______  ________    '
    puts'   /     \   /  _  \  /   _____\__    ___\_   _____\______   \ /     \ |   |\      \ \______ \   '
    puts'  /  \ /  \ /  /_\  \ \_____  \  |    |   |    __)_ |       _//  \ /  \|   |/   |   \ |    |  \  '
    puts' /    Y    /    |    \/        \ |    |   |        \|    |   /    Y    |   /    |    \|    |   \ '
    puts' \____|__  \____|__  /_______  / |____|  /_______  /|____|_  \____|__  |___\____|__  /_______  / '
    puts'         \/        \/        \/                  \/        \/        \/            \/        \/  '
    puts'                             And may the odds be ever in your favor.'
    instruction
  end

  def instruction
    puts "Enter 'p' to play, 'i' for instructions, or 'q' to quit."
  end

  def command
    print "Enter your command: "
  end

  def game_instructions
    puts "The codebreaker tries to guess the pattern, in both order and color, within ten turns. Each guess is made by placing a guess of code colors on the decoding board. Once placed, the computer provides feedback with how many are correct colors and how many are in the right location"
  end

  def ending
    puts "Good bye."
  end

  def game_intro
    puts "Game initialized."
    puts "Guess 'r' red 'b' blue 'g' green 'y' yellow or 'q' at anytime to quit"
    # require "pry"
    # binding.pry
  end

  def turn(turns)
    puts "This is turn #{turns} of 10."
  end

  def command_request
    print "Enter your guess: "
  end

  def quit
    puts "Exiting the game."
    instruction
  end

  def win
    puts "You win."
    instruction
  end

  def invalid_command
    puts "That's not a valid command."
    instruction
  end

  def not_a_proper_guess
    puts "Not a proper guess please reformat your guess"
  end
end
