class CreatePossibilities < ActiveRecord::Migration
  def change
  	create_table :possibilities do |t|
      t.text  :option
  	end
  end
end
