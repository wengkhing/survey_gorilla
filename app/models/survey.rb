class Survey < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
  belongs_to :user #ownership
  has_many :users, through: :surveyings #respondents



end
