def find_username_by_id(id)
    Players.all.each do |player|
        if player.id == id
            return player
        end
    end
end