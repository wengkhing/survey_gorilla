class Choice < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  has_many :answers
  has_many :surveyings, through: :answers

end
