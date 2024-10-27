# Ruby GPS Emulator

This project is a Ruby-based emulator that simulates GPS device data, designed to help developers test GPS data processing and integrations in a local environment. It’s tailored for simulating Suntech GPS device data, making it ideal for testing without requiring access to a physical GPS device.

## Project Overview

- **Language**: Ruby
- **Purpose**: Provide a local GPS data emulator for development and testing
- **Models**: `GPS`, `GPSFrameSent`
- **Database**: SQLite (configurable to other databases if needed)

## Features

- Emulates GPS device data (e.g., location, timestamp)
- Stores simulated GPS frame data for testing and analysis
- Supports custom data structure for GPS frames
- Easy-to-expand architecture for additional GPS data fields

## Prerequisites

- **Ruby**: Version 3.0 or higher
- **Rails**: Version 6.0 or higher (if using Rails as a framework)

## Getting Started

Follow these steps to set up and run the project locally:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/ruby-gps-emulator.git
   cd ruby-gps-emulator
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Set up the database**:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Run the server** (if using Rails):
   ```bash
   rails server
   ```
   The server will start on `http://localhost:3000`.

## Models Overview

This emulator includes the following primary models:

- **GPS**: Represents a GPS device, with fields for device ID, latitude, longitude, and last reported timestamp.
- **GPSFrameSent**: Represents individual frames sent by the GPS device, storing the frame data and the timestamp when it was sent.

## Example Usage in Rails Console

Use the Rails console to create and interact with GPS data:

```ruby
# Open Rails console
rails console

# Create a new GPS device
gps = GPS.create(device_id: "123456789", latitude: 37.7749, longitude: -122.4194, last_reported_at: Time.now)

# Simulate a frame sent from the GPS device
GPSFrameSent.create(gps: gps, data: "Simulated frame data", sent_at: Time.now)

# Retrieve frames for a GPS device
gps.gps_frame_sents
```

## Contributing

Contributions are welcome! If you’d like to add features or make improvements, feel free to fork the repository and submit a pull request. For major changes, please open an issue to discuss your ideas.

## License

This project is open-source and available under the [MIT License](LICENSE).

---

Happy simulating!
```

This README should give your project a solid starting point with an overview, setup instructions, model details, example usage, and contribution guidelines. You can add more specific instructions or features as you expand the emulator. Let me know if you’d like any adjustments or extra sections!
