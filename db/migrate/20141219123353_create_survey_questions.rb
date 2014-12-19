class CreateSurveyQuestions < ActiveRecord::Migration
  def change
  	create_table :survey_questions do |t|
  		t.references :question_id
  		t.references :survey_id
  	end
  end
end
