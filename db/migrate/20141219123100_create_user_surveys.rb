class CreateUserSurveys < ActiveRecord::Migration
  def change
  	create_table :user_surveys do |t|
  		t.references :user_id
  		t.references :survey_id
  	end
  end
end
