class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.integer :platform_id
      t.string :platform_name
      t.timestamps
    end
  end
end
