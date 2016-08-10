class CreateGameCharacters < ActiveRecord::Migration
  def change
    create_table :game_characters do |t|
      t.integer :game_id, null: false
      t.integer :character_id, null: false
    end
  end
end
