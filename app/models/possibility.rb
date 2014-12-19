class Possibility < ActiveRecord::Base
  # Remember to create a migration!
  has_many :question_possibilities
  has_many :questions, through: :question_possibilities 
end
