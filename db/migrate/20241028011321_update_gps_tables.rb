class UpdateGpsTables < ActiveRecord::Migration[7.2]
  def change
    # Add a `model` column to the `gps` table
    add_column :gps, :model, :string

    # Add a unique index to `device_id` in the `gps` table
    add_index :gps, :device_id, unique: true
  end
end
