ActiveRecord::Base.logger = nil
$prompt = TTY::Prompt.new
$current_user = nil


#Extra??? users can bet on a game, moderators not

def greeting
    user_selection = $prompt.select("Welcome to Infinite Pickup!".bold.cyan , ["Sign Up", "Login", "Quit"])

    if user_selection == "Sign Up"
        puts "\n"
        sign_up
        puts "\n"
    elsif user_selection == "Login"
        puts "\n"
        login
        puts "\n"
    else
        puts "\n"
        puts "See you next time!".cyan
        puts "\n"
        exit!
    end
end

def sign_up
    new_user = $prompt.ask("Please create a username:".cyan)
    new_username = new_user.downcase.to_s
    puts "\n"
    if Player.find_by(username: new_username)
        puts "Username #{new_username.bold} #{"already exists.".red}\n".red
        return greeting
    else
        new_password = $prompt.mask("Please create a password:".cyan)
        puts "\n"
        full_name = $prompt.ask("Please enter your full name:".cyan)
        Player.create(name: full_name, username: new_username, password: new_password)
        puts "Your profile has been created!\nYou can now login.\n".green
        return greeting
    end

end

def login
    user_input = $prompt.ask("Please enter your username:".cyan)
    username = user_input.downcase.to_s
    puts "\n"
    password = $prompt.mask("Please enter your password:".cyan)
    is_player = 0

    Player.all.each do |player|
        if player.username == username && player.password == password
            $current_user = player
            is_player = 1
            puts "\n"
            puts "Welcome #{player.name.bold}#{"!".cyan}".cyan
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
    selection = $prompt.select("What would you like to do?".cyan, ["Create a game", "Join a game", "View your games", "Your Account", "Logout"])
    puts "\n"
    if selection == "Create a game"
        create_a_game
    elsif selection == "Join a game"
        join_a_game
    elsif selection == "View your games"
        your_games
    elsif selection == "Your Account"
        your_account
    else
        puts "\n"
        puts "Goodbye!".cyan
        puts "\n"
        greeting
    end
    puts "\n"
end