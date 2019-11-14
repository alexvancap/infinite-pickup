require 'date'

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

def ask_for_date
    user_date = $prompt.ask("Please enter the date you would like to play:".blue)
    if valid_date?(user_date)
        $date = user_date
    else
        puts "\n"
        puts "Please enter your date in mm/dd/yyyy format."
        puts "\n"
        ask_for_date
    end
    $date
end