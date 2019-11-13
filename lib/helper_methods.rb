def find_username_by_id(id)
    Player.all.each do |player|
        if player.id == id
            return player.username
        end
    end
end