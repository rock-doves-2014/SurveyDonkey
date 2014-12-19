class Question < ActiveRecord::Base

  has_many :survey_questions
  has_many :question_possibilities
  has_many :possibilities, through: :question_possibilities
  has_many :surveys, through: :survey_questions

end
