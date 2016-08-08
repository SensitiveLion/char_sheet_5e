class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.integer :character_id, null: false
      t.string :name
      t.string :attack
      t.string :damage
    end
  end
end
