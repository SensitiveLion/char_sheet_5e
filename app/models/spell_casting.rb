class SpellCasting < ActiveRecord::Base
  belongs_to :character

  validates :character, presence: true
end
