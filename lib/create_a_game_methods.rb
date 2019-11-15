require 'date'
require 'time'

def valid_date?(date)
   parts = date.split('/')
   month = parts[0]
   date = parts[1]
   year = parts[2]
   begin
      Date.new(year.to_i, month.to_i, date.to_i)
      return true
   rescue ArgumentError
      return false
   end
end

def valid_time?(time)
   begin
       Time.parse(time)
       return true
   rescue ArgumentError
       return false
   end
end

def validate_create_a_question(question)
    variable = $prompt.ask(question.blue)

    if variable == "exit"
        return dashboard 
    elsif variable == nil || variable.strip == ""
        puts "You didn't type anything!".red
        validate_create_a_question(question)
    elsif !variable.is_a? Integer
        variable = (variable).split(/ |\_/).map(&:capitalize).join(" ")
    end
    variable
end

def ask_for_date
   user_date = $prompt.ask("Please enter the date you would like to play:".blue)
   if user_date == nil || user_date.strip == ""
       puts "You didn't type anything!".red
   elsif valid_date?(user_date)
       date = user_date
   else
       puts "\n"
       puts "Please enter your date in #{"mm/dd/yyyy".bold} format."
       puts "\n"
       ask_for_date
   end
   date
end

def ask_for_time
   user_time = $prompt.ask("Please enter the time you would like to play:".blue)
   if user_date == nil || user_date.strip == ""
    puts "You didn't type anything!".red
   elsif valid_time?(user_time)
       time = user_time
   else
       puts "\n"
       puts "Please enter your time in #{"hh:mm".bold} format."
       puts "\n"
       ask_for_time
   end
   time
end

def make_game(sport, max_players, venue, date, time)
    
    if !(Game.find_by(venue: venue, game_type: sport, time: time, date: date, max_player: max_players))
    user_yes_no = $prompt.select("Are you sure you would like to create this #{sport.downcase.yellow} #{"game\nfor".yellow} #{max_players.yellow} #{"players at".yellow} #{venue.yellow} #{"on".yellow} #{date.yellow} #{"at".yellow} #{time.yellow}#{"?".yellow}".yellow, ["For sure!", "Nah, I'm just foolin'","Nooo, I messed up!"])
        if user_yes_no == "For sure!"
            new_game = Game.create({venue: venue, game_type: sport, creator: $current_user.id, time: time, date: date, joined_players: 1, max_player: max_players})
            Matchup.create({player: $current_user, game: new_game})
            puts "\nYour #{new_game.game_type.downcase} game for #{new_game.max_player} at #{new_game.venue} on\n#{new_game.date} at #{new_game.time} has been successfully created.".green
        elsif user_yes_no == "Nah, I'm just foolin'"
            puts "\n"
        elsif user_yes_no == "Nooo, I messed up!"
            puts "Let's try again."
            create_a_game
        end
    else
        puts "\nThis game has already been created.".red
    end
end