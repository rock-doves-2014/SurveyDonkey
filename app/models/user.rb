class User < ActiveRecord::Base
  has_secure_password
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, uniqueness: true

  has_many :user_surveys
  has_many :surveys, through: :user_surveys
end
