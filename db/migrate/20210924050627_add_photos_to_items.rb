class AddPhotosToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :photo, :string
    add_column :items, :thumb, :string
  end
end
