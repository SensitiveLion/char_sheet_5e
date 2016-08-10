class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id, null: false
      t.string :name
      t.string :class
      t.string :background
      t.string :race
      t.string :alignment
      t.string :exp
      t.string :hit_dice
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armor
      t.string :initiative
      t.integer :speed
      t.string :inspiration
      t.string :proficiency
      t.string :strength_save
      t.string :dexterity_save
      t.string :constitution_save
      t.string :intelligence_save
      t.string :wisdom_save
      t.string :charisma_save
      t.string :acrobatics
      t.string :animal
      t.string :arcana
      t.string :athletics
      t.string :deception
      t.string :history
      t.string :insight
      t.string :intimidation
      t.string :investication
      t.string :medicine
      t.string :nature
      t.string :perception
      t.string :religion
      t.string :slight
      t.string :stealth
      t.string :survival
      t.string :casting_ability
      t.string :spell_dc
      t.string :spell_atk
      t.string :passive_wis
      t.integer :hit_Points
      t.integer :cp
      t.integer :sp
      t.integer :gp
      t.integer :pp
    end
  end
end
