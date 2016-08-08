class CreateSpellCastings < ActiveRecord::Migration
  def change
    create_table :spell_castings do |t|
      t.integer :character_id, null: false
      t.string :spell_casting_class
      t.integer :lv1_slots
      t.integer :lv2_slots
      t.integer :lv3_slots
      t.integer :lv4_slots
      t.integer :lv5_slots
      t.integer :lv6_slots
      t.integer :lv7_slots
      t.integer :lv8_slots
      t.integer :lv9_slots
    end
  end
end
