class RenameRecordedAtToPositionDateInRoutePositions < ActiveRecord::Migration[7.2]
  def change
    rename_column :route_positions, :recorded_at, :position_date
  end
end
