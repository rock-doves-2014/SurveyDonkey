class CreateUserSurveys < ActiveRecord::Migration
  def change
  	create_table :user_surveys do |t|
  		t.references :user
  		t.references :survey
  	end
  end
end
