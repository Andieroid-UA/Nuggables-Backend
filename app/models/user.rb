class User < ApplicationRecord

  # validations
  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 30}, format: {
    with: /\A[a-zA-Z0-9_]+\z/,
    message: "Can only contain letters, numbers, and underscores and at least one letter or number" }
  validates :email, presence: true, uniqueness: true, length: {minimum: 5, maximum: 255}, format: {
    with: URI::MailTo::EMAIL_REGEXP
  }
  validates :first_name, presence: true
  validates :last_name, presence: true

  # password
  has_secure_password

end
