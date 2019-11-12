def join_a_game

    puts "hi"

    available_sports = Game.all.map do |game|
        game.game_type
    end

    select_sport = $prompt.select("What sport would you like to play?".blue, available_sports.uniq)


    available_games_objects = []
    available_games = []
    
    Game.all.each do |game|
        if game.game_type == select_sport
            available_games_objects << game
        end
    end
    
    available_games_objects.each do |object|
        available_games << object.date
    end

    selected_day = $prompt.select("Select a day:".blue, available_games.uniq)


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

    selected_time = $prompt.select("Select a time:".blue, remaining_games_time.uniq)


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

    select_location = $prompt.select("Choose your location:".blue, games_after_time.uniq)


    final = nil
    
    available_games_objects.each do |game|
        if game.venue == select_location
            final = game
       end
    end


    yes_no = $prompt.select("Are you sure you would like to join this game:\n
    sport: #{final.game_type}
    location: #{final.venue}
    date: #{final.date}
    time: #{final.time}\n".blue, ["FUCK YEAH!!", "Naah I'm good :("])
    puts "\n\n"

    if yes_no == "Hell yeah!!"
        #
        #
        #   WE STILL HAVE TO ADD 1 TO THE GAME PEOPLE IN THE GAME
        #   (another person will have joined the game)
        #
        #
        Matchup.create({player: $current_user, game: final})
        puts "You have succesfully joined this game!".red
    else
        puts "\n"
        dashboard
    end

    puts "\n"
    dashboard

end