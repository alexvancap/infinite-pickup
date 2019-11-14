$date = nil

def create_a_game

    puts "#{"Type".cyan} #{"exit".bold.blue} #{"to go back to the dashboard.".cyan}"

    puts "\n"
    user_sport = validate_create_a_question("What sport would you like to organize?")

    puts "\n"
    max_players = validate_create_a_question("How many players may join your game?")

    puts "\n"
    user_venue = validate_create_a_question( "Where would you like to play?")

    puts "\n"
    date = ask_for_date

    puts "\n"
    time = ask_for_time

    puts "\n"
    make_game(user_sport, max_players, user_venue, date, time)
    dashboard

end