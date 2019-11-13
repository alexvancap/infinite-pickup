def create_a_game

    puts "\n"
    user_sport = $prompt.ask("What sport would you like to organize?".blue)
    sport = (user_sport).split(/ |\_/).map(&:capitalize).join(" ")
    
    puts "\n"
    user_venue = $prompt.ask("Where would you like to play?".blue)
    venue = (user_venue).split(/ |\_/).map(&:capitalize).join(" ")
    puts "\n"
    date = $prompt.ask("Please enter the date you would like to play:".blue) #do |i|
#        i.validate(\, "Please enter your date in mm/dd/yyyy format.")
#    end
    puts "\n"
    time = $prompt.ask("Please enter the time you would like to play:".blue)
    puts "\n"
    new_game = Game.create({venue: venue, game_type: sport, creator: $current_user.id, time: time, date: date, joined_players: 1})
    
    if Game.find_by!(venue: venue, game_type: sport, time: time, date: date)
        user_yes_no = $prompt.select("Are you sure you would like to create this pickup game?".yellow, ["For sure!", "Nah, I'm just foolin'","Nah, I messed up!"])
        if user_yes_no == "For sure!"
            Matchup.create({player: $current_user, game: new_game})
            puts "\nYour #{new_game.game_type.downcase} game at #{new_game.venue} on\n#{new_game.date} at #{new_game.time} has been successfully created.".green
        else
            dashboard
            puts "\n"
        end
    else
        puts "\nThis game has already been created.".red
    end

    puts "\n"
    dashboard
end