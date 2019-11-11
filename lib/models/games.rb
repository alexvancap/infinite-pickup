class Game < ActiveRecord::Base
    has_many :players, through: :matchups
end