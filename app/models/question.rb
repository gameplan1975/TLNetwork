class Question < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 20 }
  validates :year, presence: true, numericality: { greater_than: 0}
  validates :month, presence: true
  validates :genre_id, presence: true
end
