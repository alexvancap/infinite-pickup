def your_games

    #if a user has no games yet it will say that the user has all games

    puts "Here are your games!"
    puts "\n"

    new_array = []

    Matchup.all.each do |matchup|

        if matchup.player == $current_user
            new_array << matchup.game
        end
    end

    new_array.map do |game|
        puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}"
    end
end