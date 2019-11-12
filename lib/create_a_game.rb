def create_a_game

    puts "Which sport would you like to organize?".blue
    sport = gets.chomp
    
    puts "Where would you like to play?".blue
    venue = gets.chomp.downcase

    puts "Which day would you like to play?".blue
    date = gets.chomp

    puts "What time would you like to play?".blue
    time = gets.chomp

    new_game = Game.create({venue: venue, game_type: sport, creator: $current_user, time: time, date: date})
    

    if Game.find_by!(venue: venue, game_type: sport, time: time, date: date)
        Matchup.create({player: $current_user, game: new_game})
        puts "Your #{new_game.game_type} game has been succesfully created at #{new_game.venue}
         for #{new_game.date} at #{new_game.time}.".blue
    else
        puts "This game has already been created.".red
    end


    puts "\n\n"

    dashboard
end