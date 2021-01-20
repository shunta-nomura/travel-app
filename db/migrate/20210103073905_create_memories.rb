class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.text :description
      t.integer :prefecture_id, null:false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end