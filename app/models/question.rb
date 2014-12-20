class Question < ActiveRecord::Base
  # Remember to create a migration!
  validates :content, presence: true
  validates :type, prsence:true


  has_many :survey_questions 
  has_many :question_possibilities
  has_many :possibilities, through: :question_possibilities 
  has_many :surveys, through: :survey_questions
  
end
