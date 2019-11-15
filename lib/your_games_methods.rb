def game_creator_to_hash
    array = []
    Game.all.each do |game|
        if game.creator == $current_user.id.to_s
            array << {"#{game.game_type}, #{game.venue}, #{game.date}, #{game.time}" => game}
        end
    end
    array
end