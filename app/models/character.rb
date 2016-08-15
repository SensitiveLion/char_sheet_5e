class Character < ActiveRecord::Base
  has_many :attacks, dependent: :destroy
  has_many :text_boxes, dependent: :destroy
  has_many :spells, dependent: :destroy
  has_many :spell_castings, dependent: :destroy
  has_many :character_proficiencies, dependent: :destroy
  has_many :proficiencies, through: :character_proficiencies
  has_many :game_characters, dependent: :destroy
  has_many :games, through: :game_characters

  belongs_to :user

  validates :user, presence: true
end
