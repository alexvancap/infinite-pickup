def create_a_game

    puts "Which sport would you like to organize?"
    sport = gets.chomp
    puts "\n"
    
    puts "Where would you like to play?"
    venue = gets.chomp.downcase
    puts "\n"

    puts "Which day would you like to play?"
    date = gets.chomp
    puts "\n"

    puts "What time would you like to play?"
    time = gets.chomp
    puts "\n"

    new_game = Game.create({venue: venue, game_type: sport, captain: $current_user, time: time, date: date})
    ##creates matchup even though it already exists
    Matchup.create({player: $current_user, game: new_game})
        

    puts "Your #{new_game.game_type} game has been succesfully created at #{new_game.venue}
     for #{new_game.date} at #{new_game.time}."

    puts "\n"

    dashboard
end