def change_username
    puts "\n"
    puts "#{"Please enter your".cyan} #{"new".bold.cyan} #{"username".cyan}"
    puts "#{"Type".cyan} #{"exit".bold.cyan} #{"to go to the dashboard.".cyan}"
    new_username = gets.chomp.downcase.to_s

    if Player.find_by(username: new_username)
        puts "Username #{new_username.bold} #{"already exists.".red}\n".red
        return change_username
    end
    if new_username == "exit"
        puts "Sending you back to the dashboard.".yellow
        dashboard

    else
        Player.all.each do |player|
            if player.id == $current_user.id
                player.update({username: new_username})
                puts "#{"Your username has been succesfully changed to".green} #{new_username.bold.green}"
                puts "\n"
                dashboard
            end
        end
    end
end


def change_password
    puts "\n"
    puts "#{"Please enter".cyan} #{"old".bold.cyan} #{"password".cyan}"
    puts "#{"Type".cyan} #{"exit".bold.cyan} #{"to go to the dashboard.".cyan}"
    old_pass = gets.chomp

    Player.all.each do |player|
        if player.id == $current_user.id
            #checks if password matches old password

            if player.password == old_pass
                #checks if the same password was not entered twice
                puts "#{"Please enter your".cyan} #{"new".bold.cyan} #{"password".cyan}"
                puts "#{"Type".cyan} #{"exit".bold.cyan} #{"to go to the dashboard.".cyan}"
                new_pass = gets.chomp

                if new_pass != old_pass
                    #asks for new password after old password is confirmed

                    #updates password in database
                    player.update({password: new_pass})
                    puts "\n"
                    puts "Your password has been changed".green
                    dashboard
                else
                    puts "Your new password cannot be the same as your old password!".red
                    change_password
                end
            elsif old_pass == "exit"
                puts "Sending you back to the dashboard.".yellow
                dashboard
            else
                puts "The entered password does not match your old password!".red
                change_password
            end
        end
    end
end

def change_name
    puts "\n"
    puts "#{"Please enter your".cyan} #{"new".bold.cyan} #{"name".cyan}"
    puts "#{"Type".cyan} #{"exit".bold.cyan} #{"to go to the dashboard.".cyan}"
    new_name = gets.chomp.downcase.to_s

    if new_name == "exit"
        puts "Sending you back to the dashboard.".yellow
        dashboard
    else
        Player.all.each do |player|
            if player.id == $current_user.id
                player.update({name: new_name})
                puts "#{"Your name has been succesfully changed to".green} #{new_name.bold.green}"
                puts "\n"
                dashboard
            end
        end
    end

end

def your_account
    
    chosen_option = $prompt.select("Please select an option:".cyan, ["Change name", "Change username", "Change password", "Back"])

    if chosen_option == "Change name"
        change_name
    elsif chosen_option == "Change username"
        change_username
    elsif chosen_option == "Change password"
        change_password
    elsif chosen_option == "Back"
        dashboard
    end
end
