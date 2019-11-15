def your_games

    #if a user has no games yet it will say that the user has all games

    if Game.first.nil?
        puts "\n"
        puts "There are no games available, create one now!".red
        puts "\n"
        create_a_game
    
    else
        puts "\n"

        selection = $prompt.select("What games would you like to view?".cyan, ["Joined Games", "Created Games", "Back"])
        
        puts "\n"

        if selection == "Joined Games"
            joined_games_options
        elsif selection == "Created Games"
            created_games_options
        elsif selection == "Back"
            dashboard
        end

    end
end

def joined_games_options

    selection = $prompt.select("What would you like to do?".cyan, ["Leave Game", "View Games You've Joined", "Back"])

        if selection == "View Games You've Joined"
            show_joined_games
        elsif selection == "Leave Game"
            leave_game
        elsif selection == "Back"
            your_games
        end
end

def created_games_options
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