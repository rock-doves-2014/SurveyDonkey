class CreateQuestionPossibilities < ActiveRecord::Migration
  def change
  	create_table :question_possibilities do |t|
  		t.references :question
  		t.references :possibility
  	end
  end
end
