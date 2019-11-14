def find_username_by_id(id)
    playa = ""
    Player.all.each do |player|
        if player.id == id
            return playa = player.username
        end
    end
   playa
end


def back_button(destination)
    button = $prompt.select("press back to go back to the menu".blue, ["Back"])
    if button == "Back"
       destination
    end
end