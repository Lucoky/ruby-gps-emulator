class CreateRoutePositions < ActiveRecord::Migration[7.2]
  def change
    create_table :route_positions do |t|
      t.references :route, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.datetime :recorded_at
      t.string :position_type

      t.timestamps
    end
  end
end
