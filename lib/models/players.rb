class Player < ActiveRecord::Base
    has_many :games, through: :matchups
end