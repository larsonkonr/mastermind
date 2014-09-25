class Printer
  def welcome
    print "\e[2J\e[f"
    puts"\n"
    puts'                                           Welcome to                                            '
    puts'    _____     _____    ______________________________________   _____  .___ _______  ________    '
    puts'   /     \   /  _  \  /   _____\__    ___\_   _____\______   \ /     \ |   |\      \ \______ \   '
    puts'  /  \ /  \ /  /_\  \ \_____  \  |    |   |    __)_ |       _//  \ /  \|   |/   |   \ |    |  \  '
    puts' /    Y    /    |    \/        \ |    |   |        \|    |   /    Y    |   /    |    \|    |   \ '
    puts' \____|__  \____|__  /_______  / |____|  /_______  /|____|_  \____|__  |___\____|__  /_______  / '
    puts'         \/        \/        \/                  \/        \/        \/            \/        \/  '
    puts'                             And may the odds be ever in your favor.'
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
    puts "Good bye."
  end

  def game_intro
    puts "\n"
    puts "Game initialized."
    color_instructions
  end

  def turn(turns)
    puts "\n"
    puts "This is turn #{turns} of 10."
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
    puts '                    _____.___.               __      __.__         '
    puts '                    \__  |   | ____  __ __  /  \    /  \__| ____   '
    puts '                     /   |   |/  _ \|  |  \ \   \/\/   /  |/    \  '
    puts '                     \____   (  <_> )  |  /  \        /|  |   |  \ '
    puts '                     / ______|\____/|____/    \__/\  / |__|___|  / '
    puts '                     \/                            \/          \/  '
    instruction
  end

  def lose
    puts'                    .____                   __    '
    puts'                    |    |    ____  _______/  |_  '
    puts'                    |    |   /  _ \/  ___/\   __\ '
    puts'                    |    |__(  <_> )___ \  |  |   '
    puts'                    |_______ \____/____  > |__|   '
    puts'                            \/         \/         '
    puts 'Im sorry you have lost would you like to try again'
    puts "\n"
    instruction
  end

  def invalid_command
    puts "\n"
    puts 'You have entered an invalid command please try again'
  end

  def color_instructions
    puts "Combine 'r' 'g' 'b' 'y' to make a 4 color code"
  end
end
