class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :favorite_category, :string
    add_column :users, :game, :integer
    add_column :users, :correct, :integer
    add_column :users, :name, :string
    add_column :users, :comment, :string
    add_column :users, :image, :string
  end
end
