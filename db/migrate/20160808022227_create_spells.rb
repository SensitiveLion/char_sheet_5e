class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.integer :character_id, null: false
      t.integer :level
      t.string :name
      t.string :type
      t.string :casting_time
      t.string :range
      t.string :components
      t.string :duration
      t.text :description
    end
  end
end
