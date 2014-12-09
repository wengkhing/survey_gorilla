class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :surveyings
  has_many :surveys, through: :surveyings

  validates :name, presence: :true, uniqueness: :true
  validates :password, presence: :true

  def authenticate(pw)
    password == pw
  end
end
