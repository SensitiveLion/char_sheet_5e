class Game < ActiveRecord::Base
  has_many :users, through: :game_users
  has_many :characters, through: :game_characters

  belongs_to :user

  validates :user, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :visibility, presence: true
end
