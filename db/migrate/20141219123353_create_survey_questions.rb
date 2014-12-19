class CreateSurveyQuestions < ActiveRecord::Migration
  def change
  	create_table :survey_questions do |t|
  		t.references :question
  		t.references :survey
  	end
  end
end
