class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :articles, dependent: :destroy
  validates :username, presence: true, length:{ minimum: 3, maximum: 25 }
  validates :username, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:{ maximum: 105 }
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: { with: VALID_EMAIL_REGEX }

  has_secure_password
end
