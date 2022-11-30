class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :starting
      t.string :ending
      t.integer :client_id
      t.integer :storage_unit_id
      t.string :goods
      t.boolean :pickup_status
      t.boolean :delivery_status

      t.timestamps
    end
  end
end
