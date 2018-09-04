class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.integer platform_id
      t.string platform_name
      t.refernces :game, foreign_key: true
      t.timestamps
    end
  end
end
