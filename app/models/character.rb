class Character < ActiveRecord::Base
  has_many :attacks
  has_many :text_boxes
  has_many :spells
  has_many :spell_castings

  has_many :proficiencies, through: :character_proficiencies
  has_many :games, through: :game_characters

  belongs_to :user

  validates :user, presence: true
end
