class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, uniqueness: true

  has_many :user_surveys
  has_many :surveys, through: :user_surveys 
end
