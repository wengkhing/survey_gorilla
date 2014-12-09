class Surveying < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :survey
  has_many :answers
  has_many :choices, through: :answers

end
