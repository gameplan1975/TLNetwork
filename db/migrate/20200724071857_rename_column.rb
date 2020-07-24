class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :accrual_time, :accrual_date
  end
end
