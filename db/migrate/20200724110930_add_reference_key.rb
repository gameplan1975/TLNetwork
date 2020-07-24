class AddReferenceKey < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :user, foreign_key: true
    add_reference :questions, :genre, foreign_key: true
  end
end
