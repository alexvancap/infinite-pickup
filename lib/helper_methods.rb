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
    puts "\n"
    button = $prompt.select("Press back to go back.".cyan, ["Back"])
    if button == "Back"
       destination
    end
end