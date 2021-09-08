class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :disc
      t.string :notes
      t.string :unit
      t.integer :quantity
      t.references :cat, null: false, foreign_key: true
      t.references :sub_cat, null: true

      t.timestamps
    end
  end
end
