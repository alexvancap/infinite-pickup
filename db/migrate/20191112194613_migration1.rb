class Migration1 < ActiveRecord::Migration[5.2]
  def change
    create_table(:games) do |t|
      t.string(:venue)
      t.string(:game_type)
      t.string(:date)
      t.string(:time)
      t.string(:creator)
    end

    create_table(:matchups) do |t|
      t.integer(:game_id)
      t.integer(:player_id)
    end

    create_table(:players) do |t|
      t.string(:name)
      t.string(:username)
    end
  end
end
