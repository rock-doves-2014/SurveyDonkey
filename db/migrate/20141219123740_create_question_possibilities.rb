class CreateQuestionPossibilities < ActiveRecord::Migration
  def change
  	create_table :question_possibilities do |t|
  		t.references :question_id
  		t.references :possibilities_id
  	end
  end
end
