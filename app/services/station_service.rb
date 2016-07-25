class StationService

  def initialize
    @connection = Faraday.new("http://my-chaims.herokuapp.com")
    @connection.headers["api_key"] = ENV["NREL"]
  end

  def get_stations
    response = @connection.get("/api/v1/artists.json")
    parse(response)
  end

end
