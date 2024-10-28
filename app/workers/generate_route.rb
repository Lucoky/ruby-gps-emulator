require 'faker'  # Corrected to standard quotes

class GenerateRoute
  include Sidekiq::Worker
  sidekiq_options unique: :until_executed, unique_args: ->(args) { [args.first] }

  def perform(gps_id)
    gps = Gps.find_by(id: gps_id)
    return unless gps

    # Route generation logic
    gps.routes.create!(coordinates: generate_random_route)
    puts "Generated route for GPS #{gps.id}"
  end

  private

  def generate_random_route
    # Generate starting point using Faker
    starting_point = [ Faker::Address.latitude, Faker::Address.longitude ]
    start_date = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)

    # Generate route positions
    # Create first route position at the starting point
    route_positions = [RoutePosition.new(
      latitude: starting_point[0],
      longitude: starting_point[1],



    )]


    routePositions << {
      latitude: starting_point[0],
      longitude: starting_point[1],

    }


    route =
  end
end
