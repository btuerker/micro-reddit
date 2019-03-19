class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: { in: 4..12 }
  EMAIL_REGEXP = /^.+@.+$/
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: false }

  has_many :posts
end
