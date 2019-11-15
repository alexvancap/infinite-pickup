def game_creator_to_hash
    array = []
    Game.all.each do |game|
        if game.creator == $current_user.id.to_s
            array << {"#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}" => game}
        end
    end
    array
end


def show_joined_games
    result = []

    Matchup.all.each do |matchup|
        if matchup.player_id == $current_user.id
            result << matchup
        end
    end

    if result.empty?
        puts "You haven't joined any games yet!".red
    else
        result.map do |game|
           puts "#{game.game.game_type}, #{game.game.venue}, #{game.game.date}, #{game.game.time}"
        end
    end
    back_button(joined_games_options)
end


def leave_game
    array = []

    Matchup.all.each do |matchup|
        if matchup.player_id == $current_user.id
            array << {"#{matchup.game.game_type}, #{matchup.game.venue}, #{matchup.game.date}, #{matchup.game.time}" => matchup}
        end
    end

    if array.empty?
        puts "You haven't joined any games yet!".red
    
    else
        selected_object = $prompt.select("Which game would you like to leave?", array)
        user_selection = $prompt.select("Are you sure you would like to Leave this game?".yellow, ["Yes", "No"])


        if user_selection == "Yes"
           selected_object.destroy
           puts "You have sucessfully left the game!".yellow
        elsif user_selection == "No"
            puts "Nothing happened.".yellow
        end
    end
    your_games
end




def show_created_games_full
    result = Game.all.select do |game|
        (game.creator == $current_user.id.to_s) && (game.max_player == game.joined_players)
    end

    if result.empty?
        puts "None of your games are full yet!".red
    else
        result.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}"
        end
    end

    back_button(created_games_options) #lib/helper_methods.rb
end

def show_created_games_not_full
    result = Game.all.select do |game|
        (game.creator == $current_user.id.to_s) && (game.max_player > game.joined_players)
    end

    if result.empty?
        puts "You haven't created any games yet!".red
    else
        result.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}"
        end
    end

    back_button(created_games_options)
end


def delete_games
    array = game_creator_to_hash

    if array.empty?
        puts "You haven't created any games yet!".red

    else
        selected_object = $prompt.select("Which game would you like to delete?", array)

        user_selection = $prompt.select("Are you sure you would like to delete this game?".yellow, ["Yes", "No"])
    
        if user_selection == "Yes"
            selected_object.destroy
            puts "Your game has been successfully deleted".green
        elsif user_selection == "No"
            puts "No worries your game is still here.".yellow
            puts "Sending you back to the menu"
            created_games_options
        end
    end
    created_games_options
end

def edit_games
    array = game_creator_to_hash

    if array.empty?
        puts "You haven't created any games yet!".red

    else
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

        puts "\nYour game: #{selected_object.game_type.downcase} game at #{selected_object.venue} on\n#{selected_object.date} at #{selected_object.time} has been successfully updated to:\n#{user_sport.downcase} game at #{user_venue} on\n#{date} at #{time}.".green

    end

    created_games_options

end
