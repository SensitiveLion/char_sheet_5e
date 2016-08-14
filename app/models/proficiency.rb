class Proficiency < ActiveRecord::Base
  before_validation :downcase_proficiency_name

  has_many :character_proficiencies, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  private

  def downcase_proficiency_name
    name.downcase!
  end
end
