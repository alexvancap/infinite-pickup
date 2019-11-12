ActiveRecord::Base.logger = nil
$prompt = TTY::Prompt.new
$current_user = nil


#Extra??? users can bet on a game, moderators not

def greeting
    user_selection = $prompt.select("Welcome to Infinite Pickup!".bold.blue , ["Sign Up", "Login", "Exit"])

    if user_selection == "Sign Up"
        sign_up
    elsif user_selection == "Login"
        login
    else
        puts "\nSee you next time!"
    end
end

def sign_up
    puts "Please create a username:".blue
    puts "\n"
    new_username = gets.chomp.downcase.to_s
    if new_username == Player.find_by(username: new_username)
        puts "Username #{new_username.bold} already exists.".red
        return greeting
    else
        puts "Please enter your full name:".blue
        full_name = gets.chomp
        Player.create(name: full_name, username: new_username)
        puts "Your profile has been created! \n You can now login.".red
        return greeting
    end

end

def login
    puts "Please enter your username:".blue
    username = gets.chomp.downcase.to_s
    puts "\n"
    is_player = 0

    Player.all.each do |player|
        if player.username == username
            $current_user = player
            is_player = 1
            puts "Welcome back #{player.name}!".blue
            dashboard
        end
    end

    if is_player == 0
        puts "You must sign up before you login.".red
        greeting
    end
end

def dashboard
    puts "\n"

    selection = $prompt.select("what would you like to do?".blue, ["Create a game", "Join a game", "View your games", "Logout"])
    
    if selection == "Create a game"
        create_a_game
    elsif selection == "Join a game"
        join_a_game
    elsif selection == "View your games"
        your_games
    else
        puts "\n"
        puts "Goodbye!"
        puts "\n"
        greeting
    end
    puts "\n\n"
end