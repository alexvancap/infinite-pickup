def joined_games_list

    selection = $prompt.select("What would you like to do?".cyan, ["Leave Game", "View Games You've Joined", "Back"])

        if selection == "Leave Game"
            leave_game
        elsif selection == "View Games You've Created"
            joined_games
        elsif selection == "Back"
            your_games
        end

end

def leave_game
    array = []

    Matchup.all.each do |matchup|
        if matchup.player_id == $current_user.id
            array << {"#{matchup.game.game_type}, #{matchup.game.venue}, #{matchup.game.date}, #{matchup.game.time}" => matchup}
        end
    end

    selected_object = $prompt.select("Which game would you like to leave?", array)
    user_selection = $prompt.select("Are you sure you would like to Leave this game?".yellow, ["Yes", "No"])


    if user_selection == "Yes"
       selected_object.destroy
       puts "You have sucessfully left the game!".yellow
    elsif user_selection == "No"
        puts "Nothing happened.".yellow
    end

end

def joined_games
    result = []

    Matchup.all.each do |matchup|
        if matchup.player_id == $current_user.id
            result << matchup
        end
    end

    result.map do |game|
       puts "#{game.game.game_type}, #{game.game.venue}, #{game.game.date}, #{game.game.time}".cyan
    end
    your_games
end

def created_games
    selection = $prompt.select("Choose your option".cyan, ["View Created Games", "Edit Games", "Delete Games", "Back"])

    if selection == "View Created Games"

        full_not_full_selection = $prompt.select("Choose your option".cyan, ["Full", "Not Full", "Back"])

        if full_not_full_selection == "Full"
            show_created_games_full
        elsif full_not_full_selection == "Not Full"
            show_created_games_not_full
        elsif full_not_full_selectio == "Back"
            your_games
        end
    elsif selection == "Edit Games"
        edit_games
    elsif selection == "Delete Games"
        delete_games
    elsif selection == "Back"
        your_games
    end
end

def delete_games
    array = game_creator_to_hash

    selected_object = $prompt.select("Which game would you like to delete?", array)

    user_selection = $prompt.select("Are you sure you would like to delete this game?".yellow, ["Yes", "No"])
    
    if user_selection == "Yes"
        selected_object.destroy
        puts "Your game has been sucesfully deleted".yellow
    elsif user_selection == "No"
        puts "No worries your game is still here.".yellow
        puts "Sending you back to the menu"
        created_games
    end
    created_games
end

def edit_games
    array = game_creator_to_hash

    selected_object = $prompt.select("Which game would you like to edit?", array)

    puts "You are now updating #{selected_object.game_type}, #{selected_object.venue}, #{selected_object.date}, #{selected_object.time}".yellow
    puts "#{"type".cyan} #{"exit".bold.cyan} #{"to go back to the menu".cyan}"
    puts "\n"

    user_sport = validate_create_a_question("What sport would you like to organize?")
    puts "\n"
    max_players = validate_create_a_question("How many players may join your game?")
    puts "\n"
    user_venue = validate_create_a_question("Where would you like to play?")
    puts "\n"
    date = ask_for_date
    puts "\n"
    time = ask_for_time

    selected_object.update(game_type: user_sport, max_player: max_players, venue: user_venue, date: date, time: time)

    puts "\nYour game: #{selected_object.game_type.downcase} game at #{selected_object.venue} on\n#{selected_object.date} at #{selected_object.time} has been successfully updated to: 
#{user_sport.downcase} game at #{user_venue} on\n#{date} at #{time}.".green

    created_games

end

def show_created_games_full
    result = Game.all.select do |game|
        (game.creator == $current_user.id.to_s) && (game.max_player == game.joined_players)
    end

    if result.empty?
        puts "None of your games are full yet!".red
    else
        result.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".cyan
        end
    end

    back_button(created_games) #lib/helper_methods.rb
end

def show_created_games_not_full
    result = Game.all.select do |game|
        (game.creator == $current_user.id.to_s) && (game.max_player > game.joined_players)
    end

    if result.empty?
        puts "You haven't created any games yet!".red
    else
        result.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".cyan
        end
    end

    back_button(created_games)
end


def your_games

    #if a user has no games yet it will say that the user has all games

    if Game.first.nil?
        puts "\n"
        puts "There are no games available, create one now!".red
        puts "\n"
        create_a_game
    
    else
        puts "\n"

        selection = $prompt.select("What games would you like to view?".cyan, ["View Joined Games", "Games You've Created", "Back"])
        
        puts "\n"

        if selection == "View Joined Games"
            joined_games_list
        elsif selection == "Games You've Created"
            created_games
        elsif selection == "Back"
            dashboard
        end

    end
end