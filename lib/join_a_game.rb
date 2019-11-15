def join_a_game

    if Player.all.count == 1
        puts "\n"
        puts "You are the only player in our system :(".red
        dashboard

    elsif Game.first.nil?
        puts "\n"
        puts "There are no games in our system yet".red
        puts "create one now!".red
        puts "\n"
        create_a_game

    elsif Matchup.first.nil?
        puts "\n"
        puts "There are no matches available!".red
        dashboard
    
    else
        #creates a sports array with all avaialble sports in it
        available_sports = []
        
        available_sports = Game.all.reject do |sport|
            sport.joined_players <= sport.max_player
        end

        available_sports = Game.all.map do |game|
            game.game_type
        end
        

        select_sport = $prompt.select("What sport would you like to play?".cyan, available_sports.uniq)


        available_games_objects = []
        available_games = []

        
        Game.all.each do |game|
            if (game.game_type == select_sport) && (game.joined_players <= game.max_player)
                available_games_objects << game
            end
        end

        available_games_objects.each do |object|
            available_games << object.date
        end

        selected_day = $prompt.select("Select a day:".cyan, available_games.uniq)


        games_after_day = []

        available_games_objects.each do |game|
            if game.date == selected_day
                games_after_day << game
            end
        end

        remaining_games_time = []

        games_after_day.each do |game|
            remaining_games_time << game.time
        end

        selected_time = $prompt.select("Select a time:".cyan, remaining_games_time.uniq)


        games_after_time_objects = []
        games_after_time = []


        available_games_objects.each do |game|
            if game.time == selected_time
                games_after_time_objects << game
            end
        end

        games_after_time_objects.each do |game|
            games_after_time << game.venue
        end

        select_location = $prompt.select("Choose your location:".cyan, games_after_time.uniq)


        final = nil
    
        available_games_objects.each do |game|
            if game.venue == select_location
                final = game
           end
        end


        yes_no = $prompt.select("#{"Are you sure you would like to join this game:\n
        sport:".yellow} #{final.game_type.bold.cyan}
        #{"location:".yellow} #{final.venue.bold.cyan}
        #{"date:".yellow} #{final.date.bold.cyan}
        #{"time:".yellow} #{final.time.bold.cyan}\n", ["Hell yeah!!", "Naah I'm good :("])

        if yes_no == "Hell yeah!!"
   
            if Matchup.find_by(player: $current_user.id, game: final.id)
                puts "You have already joined this game.".red

            else

                amount_of_joined_players = Game.find_by(id: final.id).joined_players
                Game.find_by(id: final.id).update({joined_players: amount_of_joined_players + 1})

                Matchup.create({player: $current_user, game: final})

                
                puts "\n"
                puts "You have succesfully joined #{find_username_by_id(final.id)}'s game!".green

                puts "There are now #{amount_of_joined_players + 1} people in the game.".cyan

            end

        elsif yes_no == "Naah I'm good :("
            puts "\n"
            puts "game is not added".red

        end

        puts "\n"
        dashboard
        
    end
end