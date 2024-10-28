class RoutePosition < ApplicationRecord
  belongs_to :route

  enum position_type: {
    position: "position",
    ignition_on: "ignition_on",
    ignition_off: "ignition_off",
    low_battery: "low_battery"
  }
end
