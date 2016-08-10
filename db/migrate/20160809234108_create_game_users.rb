class CreateGameUsers < ActiveRecord::Migration
  def change
    create_table :game_users do |t|
      t.integer :user_id, null: false
      t.integer :game_id, null: false
      t.string :role, null: false, default: "player"
    end
  end
end
