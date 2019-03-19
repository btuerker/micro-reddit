class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { maximum: 140 }
end
