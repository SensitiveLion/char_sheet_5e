class GameUser < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  validates :user_id, presence: true
  validates :game_id, presence: true
  validates :user_id, uniqueness: { scope: :game }
end
