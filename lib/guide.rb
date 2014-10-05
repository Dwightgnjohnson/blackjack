class Guide
  class Config
    @@actions = ['new','newgame','quit']
    def self.actions; @@actions; end
  end

  def initialize
  end

  def launch!
    introduction
    puts "\n\n  $21 ~~ $21 ~~ $21 ~~ $21 ~~ $21 ~~ $21 "

    #action loop
    result = nil
    until result == :quit
      action = get_action
      result = do_action(action)
    end
    conclusion
  end

  def get_action
    action = nil
    #keep asking for user input until they enter a valid action
    until Guide::Config.actions.include?(action)
      puts "\n\n   Welcome! What would you like to do?\n\n"
      puts "Enter either: New or Quit" if action
      user_response = gets.chomp
      action = user_response.downcase.strip
    end
    return action
  end

  def do_action(action)
    case action
    when 'new'
      newgame
    when 'quit'
      return :quit
    else
      puts "I don't understand that command"
    end
  end

  def newgame
  end

  def introduction
    puts "\n\n<<< Welcome to Ruby Blackjack! >>>\n\n"
  end

  def conclusion
    puts "\n<<< Goodbye! >>>\n\n\n"
  end

end
