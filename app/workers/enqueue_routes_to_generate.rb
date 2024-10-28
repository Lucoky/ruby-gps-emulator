require 'sidekiq-scheduler'

class EnqueueRoutesToGenerate
  include Sidekiq::Worker

  def perform
    # Find GPS devices without any routes
    gps_without_routes = Gps.left_joins(:routes)
                            .where(routes: { id: nil })

    # Find GPS devices where all routes are marked as emulated
    gps_with_all_routes_emulated = Gps.joins(:routes)
                                      .group('gps.id')
                                      .having('bool_and(routes.emulated) = TRUE')

    # Combine the two queries
    (gps_without_routes + gps_with_all_routes_emulated).uniq.each do |gps|
      # Enqueue a job to emulate a route for each GPS device
      GenerateRoute.perform_async(gps.id)
      puts "Enqueuing route generation for GPS #{gps.id}"
    end
  end
end
