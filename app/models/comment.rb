class Comment < ApplicationRecord
  belongs_to :message
  validates :title, presence: true
  validates :content, presence: true
end
