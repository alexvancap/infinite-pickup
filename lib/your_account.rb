def change_password
    puts "\n"
    puts "#{"Please type in your".blue} #{"old".bold.blue} #{"password".blue}"
    old_pass = gets.chomp.lowercase
    puts "#{"Please enter your".blue} #{"new".bold} #{"password".blue}"
    new_pass = gets.chomp

    Player.all.each do |player|
        if player.password == old_pass
            player.password.update
        end
    end

end

def change_ussername

end

def your_account
    
    chosen_option = $prompt.select("Please select your option".blue, ["Change username", "Change password"])

    if chosen_option == "Change username"
        change_username
    elsif chosen_option == "Change password"
        change_password
    end
end