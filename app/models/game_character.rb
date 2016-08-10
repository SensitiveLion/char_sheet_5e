class GameCharacter < ActiveRecord::Base
  belongs_to :game
  belongs_to :character

  validates :character, presence: true
  validates :game, presence: true
  validates :character, uniqueness: { scope: :game }
end
