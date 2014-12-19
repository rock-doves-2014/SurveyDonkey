class SurveyQuestion < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :survey
  belongs_to :question
end
