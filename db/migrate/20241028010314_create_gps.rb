class CreateGps < ActiveRecord::Migration[7.2]
  def change
    create_table :gps do |t|
      t.string :device_id
      t.float :latitude
      t.float :longitude
      t.datetime :last_reported_at

      t.timestamps
    end
  end
end
