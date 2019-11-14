def joined_games
    result = Matchup.all.map do |matchup|
        matchup.player == $current_user.id
    end

    result.map do |game|
        puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
    end
end

def created_games
    selection = $prompt.select("Choose your option".blue, ["Full", "Not Full", "Back"])

    if selection == "Full"
        array = Game.all.select do |game|
            game.max_player == game.joined_players
        end
    
        array.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
        end

        back_button = $prompt.select("press back to go back to the menu".blue, ["Back"])
        if back_button == "Back"
           dashboard
        end
    
    elsif selection == "Not Full"

        result = Game.all.select do |game|
            game.creator == $current_user.id.to_s  
        end

        result.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
        end

        back_button = $prompt.select("press back to go back to the menu".blue, ["Back"])
        if back_button == "Back"
           dashboard
        end

    end

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

        selection = $prompt.select("What games would you like to view?".blue, ["Joined Games", "Games You've Created", "Back"])
    
        if selection == "Joined Games"
            joined_games
        elsif selection == "Games You've Created"
            created_games
        elsif selection == "Back"
            sashboard
        end

    end
end