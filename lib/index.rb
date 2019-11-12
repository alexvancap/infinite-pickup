ActiveRecord::Base.logger = nil
$prompt = TTY::Prompt.new
$current_user = nil


#Extra??? users can bet on a game, moderators not

def greeting
    puts "Welcome to Infinite Pickup!"

end

def login
    puts "Please enter your full name..."
    puts "\n"
    name = gets.chomp.downcase.to_s
    puts "\n"
    is_player = 0

    Player.all.each do |player|
        if player.name == name
            $current_user = player
            is_player = 1
            return puts "Welcome back #{name}!"
        end
    end

    if is_player == 0
        Player.create({name: name})
        puts "Welcome to our platform #{name}"
    end
end

def dashboard
    puts "\n"

    selection = $prompt.select("what would you like to do?", ["Create a game", "Join a game", "Your games", "Logout"])
    
    if selection == "Create a game"
        create_a_game
    elsif selection == "Join a game"
        join_a_game
    elsif selection == "Your games"
        your_games
    else
        puts "\n"
        puts "Bye!"
        puts "\n"
    end
end