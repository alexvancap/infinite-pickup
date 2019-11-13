def find_username_by_id(id)
    playa = ""
    Player.all.each do |player|
        if player.id == id
            playa = player.username
        end
    end
    playa
end