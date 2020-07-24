class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :memo
      t.date :accrual_time
      t.boolean :playable

      t.timestamps
    end
  end
end
