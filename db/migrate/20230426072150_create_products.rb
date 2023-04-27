class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title ,null: false
      t.integer :categoly_id ,null: false
      t.integer :fee ,null: false
      t.references :admin, null: false, foreign_key: true
      t.timestamps
    end
  end
end
