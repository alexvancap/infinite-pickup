def joined_games_list

    selection = $prompt.select("What would you like to do?".blue, ["Leave Game", "View Games You've Joined", "Back"])

        if selection == "Leave Game"
            leave_game
        elsif selection == "View Games You've Created"
            joined_games
        elsif selection == "Back"
            your_games
        end

end

def leave_game

end

def joined_games
    result = []

    Matchup.all.each do |matchup|
        if matchup.player_id == $current_user.id
            result << matchup
        end
    end

    result.map do |game|
       puts "#{game.game.game_type}, #{game.game.venue}, #{game.game.date}, #{game.game.time}".blue
    end
    your_games
end

def created_games
    selection = $prompt.select("Choose your option".blue, ["Full", "Not Full", "Back"])

    if selection == "Full"
        array = Game.all.select do |game|
            (game.creator == $current_user.id.to_) && (game.max_player == game.joined_players)
        end

        array.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
        end

        back_button(created_games) #lib/helper_methods.rb
    
    elsif selection == "Not Full"

        result = Game.all.select do |game|
            (game.creator == $current_user.id.to_s) && (game.max_player > game.joined_players)
        end

        result.map do |game|
            puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
        end

        back_button(created_games)
    
    elsif selection == "Back"
        your_games
        
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

        selection = $prompt.select("What games would you like to view?".blue, ["View Joined Games", "View Games You've Created", "Back"])
        
        puts "\n"

        if selection == "View Joined Games"
            joined_games_list
        elsif selection == "View Games You've Created"
            created_games
        elsif selection == "Back"
            dashboard
        end

    end
end