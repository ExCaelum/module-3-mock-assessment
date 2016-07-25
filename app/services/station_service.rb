class StationService

  def initialize
    @connection = Faraday.new("https://developer.nrel.gov")
    @connection.headers["X-Api-Key"] = ENV["NREL"]
  end

  def get_stations(zip)
    response = @connection.get("/api/alt-fuel-stations/v1/nearest.json?location=#{zip}&limit=10&radius=10&fuel_type=ELEC,LPG")
    JSON.parse(response.body)
  end

end
