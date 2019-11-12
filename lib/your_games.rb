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

    my_games = new_array.map do |game|
        puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
    end

   
   
    result = []
   
    Matchup.all.each do |matchup|
        if matchup.game.creator == $current_user
        result.push(matchup.game)
        end
    end


    games_info = result.map do |game|
        puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
    end 




    all_games = $prompt.select("What games would you like to view?", ["All Games", "Games You've Created"])
    if games_selection == "All Games"
        puts my_games
    else games_selection == "Games You've Created"
        puts games_info
    end
    
    all_games
    


    back_button = $prompt.select("press back to go back to the menu".blue, ["Back"])
    if back_button == "Back"
       dashboard
    end



  

    # puts "Here are your games!"
    # puts "\n"




 



end

