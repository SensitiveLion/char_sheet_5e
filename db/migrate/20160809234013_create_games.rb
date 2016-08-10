class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :visibility, null: false, default: 0
      t.text :public_notes
      t.text :dm_notes
    end
  end
end
