class CreateGameModes < ActiveRecord::Migration[5.2]
  def change
    create_table :game_modes do |t|
      t.integer :game_mode_id
      t.string :game_mode_name
      t.timestamps
    end
  end
end
