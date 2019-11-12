
#removes active record debug logs
ActiveRecord::Base.logger = nil
$prompt = TTY::Prompt.new
$current_user = nil


#Extra??? users can bet on a game, moderators not

def greeting
    puts "Welcome to Infinite Pickup!"

end

def login
    puts "Please enter your username:"
    puts "\n"
    username = gets.chomp.downcase.to_s
    puts "\n"
    is_player = 0

    Player.all.each do |player|
        if player.username == username
            $current_user = player
            is_player = 1
            return puts "Welcome back #{player.name}!"
        end
    end

    if is_player == 0
        puts "Welcome to our platform #{username}. Please enter your full name:"
        name = gets.chomp
        Player.create({name: name, username: username})
    end
end

def dashboard
    puts "\n"

    selection = $prompt.select("what would you like to do?", ["Create a game", "Join a game", "View your games", "Logout"])
    
    if selection == "Create a game"
        create_a_game
    elsif selection == "Join a game"
        join_a_game
    elsif selection == "View your games"
        your_games
    else
        puts "\n"
        puts "Bye!"
        puts "\n"
    end
end