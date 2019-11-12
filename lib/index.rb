#removes active record debug logs
#ActiveRecord::Base.logger = nil
$prompt = TTY::Prompt.new
$current_user = nil


#Extra??? users can bet on a game, moderators not

def greeting
    user_selection = $prompt.select("Welcome to Infinite Pickup!", ["Sign Up", "Login", "Exit"])

    if user_selection == "Sign Up"
        sign_up
    elsif user_selection == "Login"
        login
    else
        puts "See you next time!"
    end
end

def sign_up
    puts "Please create a username:"
    new_username = gets.chomp.downcase.to_s
    if new_username == Player.find_by(username: new_username)
        puts "Username #{new_username} already exists."
        return greeting
    else
        puts "Please enter your full name:"
        full_name = gets.chomp
        Player.create(name: full_name, username: username)
        puts "Your profile has been created! \n You can now login."
        return greeting
    end

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
        puts "You must sign up before you login."
        greeting
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