class CreateCharacterProficiencies < ActiveRecord::Migration
  def change
    create_table :character_proficiencies do |t|
      t.integer :proficiencie_id, null: false
      t.integer :character_id, null: false
    end
  end
end
