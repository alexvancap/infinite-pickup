class AddMaxPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :max_player, :integer
  end
end
