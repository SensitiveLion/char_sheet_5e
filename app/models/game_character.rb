class GameCharacter < ActiveRecord::Base
  belongs_to :game
  belongs_to :character

  validates :character_id, presence: true
  validates :game_id, presence: true
  validates :character_id, uniqueness: { scope: :game }
end
