class DeleteMissColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :comment, :string
    remove_column :users, :favorite_category, :string
    remove_column :users, :game, :integer
    remove_column :users, :correct, :integer
    remove_column :users, :image, :string
    remove_column :questions, :accrual_date, :date
  end
end
