class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :game_id
      t.string :game_name
      t.integer :rating
      t.timestamps
    end
  end
end
