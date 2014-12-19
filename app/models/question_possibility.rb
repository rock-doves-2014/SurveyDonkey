class QuestionPossibility < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :possibility 
  belongs_to :question
end
