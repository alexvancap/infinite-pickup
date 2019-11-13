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
        puts "\nSee you next time!".blue
    end
end

def sign_up
    new_user = $prompt.ask("Please create a username:".blue)
    new_username = new_user.downcase.to_s
    puts "\n"
    if Player.find_by(username: new_username)
        puts "Username #{new_username.bold} #{"already exists.".red}".red
        return greeting
    else
        new_password = $prompt.mask("Please create a password:".blue)
        puts "\n"
        full_name = $prompt.ask("Please enter your full name:".blue)
        Player.create(name: full_name, username: new_username, password: new_password)
        puts "\nYour profile has been created!\nYou can now login.\n".green
        return greeting
    end

end

def login
    user_input = $prompt.ask("Please enter your username:".blue)
    username = user_input.downcase.to_s
    password = $prompt.mask("Please enter your password:".blue)
    is_player = 0

    Player.all.each do |player|
        if player.username == username && player.password == password
            $current_user = player
            is_player = 1
            puts "\n"
            puts "Welcome #{player.name.bold}#{"!".blue}".blue
            dashboard

        elsif player.username == username
            puts "The password was incorrect.\n".red
            greeting
        end
    end

    if is_player == 0
        puts "You must sign up before you login.\n".red
        greeting
    end
end

def dashboard
    puts "\n"

    selection = $prompt.select("What would you like to do?".blue, ["Create a game", "Join a game", "View games", "Your Account", "Logout"])
    
    if selection == "Create a game"
        create_a_game
    elsif selection == "Join a game"
        join_a_game
    elsif selection == "View games"
        your_games
    elsif selection == "Your Account"
        your_account
    else
        puts "\n"
        puts "Goodbye!".blue
        puts "\n"
        greeting
    end
    puts "\n"
end