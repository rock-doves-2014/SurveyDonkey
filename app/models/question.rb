class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :survey_questions 
  has_many :question_possibilities
  has_many :possibilities, through: :question_possibilities 
  has_many :surveys, through: :survey_questions
  
end
