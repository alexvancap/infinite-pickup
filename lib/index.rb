
$prompt = TTY::Prompt.new
$current_user = nil

def greeting
    puts "Welcome to Infinite Pickup!"

end

def login
    puts "Please enter your full name..."
    puts "\n"
    name = gets.chomp.downcase.to_s


    Player.all.each do |player|
        if player.name == name
            p "Welcome #{name}!"
            return $current_user = player
        else
            Player.create({name: name})
            p "Welcome to our platform #{name}"
            return $current_user = player
        end
        puts "fuck"
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
    end
end