class Printer
  def welcome
    print "\e[2J\e[f"
    puts"\n"
    puts'                                           Welcome to                                            '.yellow
    puts'    _____     _____    ______________________________________   _____  .___ _______  ________    '.blue
    puts'   /     \   /  _  \  /   _____\__    ___\_   _____\______   \ /     \ |   |\      \ \______ \   '.blue
    puts'  /  \ /  \ /  /_\  \ \_____  \  |    |   |    __)_ |       _//  \ /  \|   |/   |   \ |    |  \  '.blue
    puts' /    Y    /    |    \/        \ |    |   |        \|    |   /    Y    |   /    |    \|    |   \ '.blue
    puts' \____|__  \____|__  /_______  / |____|  /_______  /|____|_  \____|__  |___\____|__  /_______  / '.blue
    puts'         \/        \/        \/                  \/        \/        \/            \/        \/  '.blue
    puts'                             And may the odds be ever in your favor.'.red
    puts "\n"
    instruction
  end

  def instruction
    puts "Enter 'p' to play, 'i' for instructions, or 'q' to quit."
  end

  def command
    puts "\n"
    print "Enter your command: "
  end

  def game_instructions
    puts "The codebreaker tries to guess the pattern, in both order and color, within ten turns. \nEach guess is made by placing a guess of code colors on the decoding board. Once placed, \the computer provides feedback with how many are correct colors and how many are in the right location"
  end

  def ending
    puts "Good bye. Come again"
  end

  def game_intro
    puts "\n"
    puts "Game initialized."
    color_instructions
  end

  def turn(turns)
    puts "\n"
    puts "This is turn #{turns} of 10.".yellow
  end

  def command_request
    puts "\n"
    print "Enter your guess: "
  end

  def quit
    puts "Exiting the game."
    instruction
  end

  def win
    puts '                    _____.___.               __      __.__         '.blue
    puts '                    \__  |   | ____  __ __  /  \    /  \__| ____   '.blue
    puts '                     /   |   |/  _ \|  |  \ \   \/\/   /  |/    \  '.blue
    puts '                     \____   (  <_> )  |  /  \        /|  |   |  \ '.blue
    puts '                     / ______|\____/|____/    \__/\  / |__|___|  / '.blue
    puts '                     \/                            \/          \/  '.blue
    instruction
  end

  def lose
    puts'                    .____                   __    '.blue
    puts'                    |    |    ____  _______/  |_  '.blue
    puts'                    |    |   /  _ \/  ___/\   __\ '.blue
    puts'                    |    |__(  <_> )___ \  |  |   '.blue
    puts'                    |_______ \____/____  > |__|   '.blue
    puts'                            \/         \/         '.blue
    puts "I'm sorry, you have lost. Would you like to try again"
    puts "\n"
    instruction
  end

  def invalid_command
    puts "\n"
    puts 'You have entered an invalid command please try again'.green
  end

  def invalid_guess_not_enough
    puts "\n"
    puts 'You have entered not enough letters please try again'.green
    puts 'Format: rbgy or q to quit'.green
  end
  def invalid_guess_too_many
    puts "\n"
    puts 'You have entered too many lettters please try again'.green
    puts 'Format: rbgy or q to quit'.green
  end
  def invalid_guess
    puts "\n"
    puts 'You have entered an invalid guess please try again'.green
    puts 'Format: rbgy or q to quit'.green
  end

  def color_instructions
    puts "Combine 'r' 'g' 'b' 'y' to make a 4 color code"
  end
end
