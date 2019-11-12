class AddJoinedPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column(:games, :joined_players, :integer)
  end
end
