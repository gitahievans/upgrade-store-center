class CreateStorageUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :storage_units do |t|
      t.integer :unit_number
      t.string :size
      t.integer :price
      t.string :image_url
      t.integer :staff_id
      t.boolean :availability

      t.timestamps
    end
  end
end
