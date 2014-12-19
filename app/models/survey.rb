class Survey < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, presence :true

  has_many :survey_questions
  has_many :user_surveys 
  has_many :questions, through: :survey_questions 
  has_many :users, through: :user_surveys

  belongs_to :author, class_name: "User", foreign_key: :user_id


  # belongs_to :survey_questions 
  # has_many :questions :users, through: :survey_questions :user_surveys 
end
