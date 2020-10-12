
$commands = {
    :help => "displays this help message",
    :list => "displays a list of songs you can play",
    :play => "lets you choose a song to play",
    :exit => "exits this program"
  }
  
  def help
    puts "I accept the following commands:\n"
    $commands.each do |key,value|
        puts "- #{key} : #{value}\n"
    end
  end
  
  def list(songArr)
    for index in (0...songArr.length)
      puts "#{index+1}. #{songArr[index]}\n"
    end
  end
  
  def play(songArr)
    puts "Please enter a song name or number:"
    userChoice = gets.chomp
    if userChoice.to_i > 0
      if userChoice.to_i <= songArr.length
        puts "Playing #{songArr[(userChoice.to_i-1)]}"
      else
        puts "Invalid input, please try again"
      end
    elsif songArr.include?(userChoice)
      puts "Playing #{userChoice}"
    else
      puts "Invalid input, please try again"
    end
  end
  
  def exit_jukebox
    puts "Goodbye!"
  end
  
  def run(songArr)
    puts "Please enter a command:"
    goToChoice = gets.chomp
    case goToChoice
    when "help"
      help
    when "list"
      list(songArr)
    when "play"
      play(songArr)
    when "exit"
      exit_jukebox
    else
      "Please enter a command:"
    end
  end
  