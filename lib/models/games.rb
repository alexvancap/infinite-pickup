class Games < ActiveRecord::Base
    has_many :players, through: :matchups
end