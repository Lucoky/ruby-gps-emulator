class GpsController < ApplicationController
  def create_random
    count = params[:count].to_i || 1
    created_gps_records = []


    # Generate random GPS records
    print("count: ", count)
    count.times do
      has_position = rand < 0.5
      print("has_position: ", has_position)
      gps = Gps.create(
        device_id: SecureRandom.hex(8),
        latitude: has_position ? rand(-90.0..90.0) : nil,
        longitude: has_position ? rand(-180.0..180.0) : nil,
        model: ["Model A", "Model B", "Model C"].sample,
        last_reported_at: has_position ? Time.now : nil
      )
      print("gps: ", gps)
      created_gps_records << gps
    end

    # Return the created GPS records as JSON
    render json: created_gps_records
  end
end
