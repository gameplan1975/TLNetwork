class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :game
      t.integer :correct
      t.string :favorite_category
      t.time :total_time
      t.string :comment
      t.string :image

      t.timestamps
    end
  end
end
