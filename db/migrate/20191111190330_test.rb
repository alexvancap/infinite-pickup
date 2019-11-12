class Test < ActiveRecord::Migration[5.2]
  def change
    create_table(:games) do |table|
      table.string(:venue)
      table.string(:game_type)
      table.datetime(:game_time)
      table.integer(:captain)
    end

  create_table(:matchups) do |table|
    table.integer(:game_id)
    table.integer(:player_id)
  end

  create_table(:players) do |table|
    table.string(:name)
  end
end
end
