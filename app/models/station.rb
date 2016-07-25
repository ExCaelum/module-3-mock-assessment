class Station

  def self.service
    @@service ||= StationService.new
  end

  def self.all
    stations = service.get_stations


end
