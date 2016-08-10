class CharacterProficiency < ActiveRecord::Base
  belongs_to :character
  belongs_to :proficiency


  validates :proficiency, presence: true
  validates :character, presence: true
  validates :proficiency, uniqueness: { scope: :game }
end
