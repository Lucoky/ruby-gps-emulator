class CreateRoutes < ActiveRecord::Migration[7.2]
  def change
    create_table :routes do |t|
      t.references :gps, null: false, foreign_key: true
      t.boolean :emulated

      t.timestamps
    end
  end
end
