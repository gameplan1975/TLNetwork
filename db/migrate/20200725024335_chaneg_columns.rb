class ChanegColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :year, :integer
    add_column :questions, :month, :integer
  end
end
