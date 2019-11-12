class AddPasswordColumnToPlayersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :password, :string
  end
end
