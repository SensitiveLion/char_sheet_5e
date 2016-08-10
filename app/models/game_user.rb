class GameUser < ActiveRecord::Base
  validates :game, presence: true
  validates :user, presence: true

  validates :user, presence: true
  validates :game, presence: true
  validates :user, uniqueness: { scope: :game }
end
