def create_a_game

    puts "\n"
    puts "Which sport would you like to organize?".blue
    sport = (gets.chomp.trim).split(/ |\_/).map(&:capitalize).join(" ")

    puts "How many players may join your game?"
    max_players = gets.chomp.trim
    
    puts "Where would you like to play?".blue
    venue = (gets.chomp.trim).split(/ |\_/).map(&:capitalize).join(" ")

    puts "Which day would you like to play?".blue
    puts "MM/DD/YYYY"
    date = gets.chomp.trim

    puts "What time would you like to play?".blue
    puts "HH:MM"
    time = gets.chomp.trim

    new_game = Game.create({venue: venue, game_type: sport, creator: $current_user.id, time: time, date: date, joined_players: 1, max_players: max_players})
    

    if Game.find_by!(venue: venue, game_type: sport, time: time, date: date)
        Matchup.create({player: $current_user, game: new_game})
        puts "Your #{new_game.game_type} game has been succesfully created at #{new_game.venue}
         for #{new_game.date} at #{new_game.time}.".green
    else
        puts "This game has already been created.".red
    end


    puts "\n\n"

    dashboard
end