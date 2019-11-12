def your_games

    #if a user has no games yet it will say that the user has all games

    puts "Here are your games!".blue
    puts "\n"
    
    def all_games
    all_games = $prompt.select("What games would you like to view?".blue, ["All Games", "Games You've Created"])
    if all_games == "All Games"
        new_array
    else all_games == "Games You've Created"
       result
       end
    end
    


    new_array = []

    Matchup.all.each do |matchup|

        if matchup.player == $current_user
            new_array << matchup.game
        end
    end

    new_array.map do |game|
        puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
    end

   
   
    result = []
   
   Matchup.all.each do |matchup|

    if matchup.game.creator == $current_user
        result.push(matchup.game)
    end
end

result.map do |game|
    puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
end 


    
def back_button
    back_button = $prompt.select("press back to go back to the menu".blue, ["Back"])
    if back_button == "Back"
       dashboard
    end
end

  back_button




end