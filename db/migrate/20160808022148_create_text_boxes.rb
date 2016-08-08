class CreateTextBoxes < ActiveRecord::Migration
  def change
    create_table :text_boxes do |t|
      t.integer :character_id, null: false
      t.string :name
      t.text :text_box
    end
  end
end
