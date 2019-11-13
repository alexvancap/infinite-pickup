def your_games

    #if a user has no games yet it will say that the user has all games

    if Game.first.nil?
        puts "\n"
        puts "There are no games available, create one now!".red
        puts "\n"
        create_a_game
    
    else
        puts "Here are your games!".blue
        puts "\n"




        new_array = []
        Matchup.all.each do |matchup|

            if matchup.player == $current_user
                new_array << matchup.game
            end
        end
   
        result = []
        Game.all.each do |game|
            if game.creator == $current_user.id.to_s
            result << game
            end
        end

        all_games = $prompt.select("What games would you like to view?", ["All Games", "Games You've Created"])
    
        if all_games == "All Games"
            new_array.map do |game|
                puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
            end
        elsif all_games == "Games You've Created"
            result.map do |game|
                puts "#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}".blue
            end 
        end


        back_button = $prompt.select("press back to go back to the menu".blue, ["Back"])
        if back_button == "Back"
           dashboard
        end



  

    # puts "Here are your games!"
    # puts "\n"

 


    end
end

