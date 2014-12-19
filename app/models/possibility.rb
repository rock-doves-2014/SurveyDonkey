class Possibility < ActiveRecord::Base
  validates :option, uniqueness: true

  has_many :question_possibilities
  has_many :questions, through: :question_possibilities
end
