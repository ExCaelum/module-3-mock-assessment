class StationService

  def initialize
    @connection = Faraday.new("https://developer.nrel.gov")
    @connection.headers["api_key"] = ENV["NREL"]
  end

  def get_stations(zip)
    response = @connection.get("/api/alt-fuel-stations/v1/nearest.format&zip=#{zip}?limit=6")
    JSON.parse(response.body)
  end

end
