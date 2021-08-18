class CreateSubCats < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_cats do |t|
      t.string :name
      t.string :disc
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
