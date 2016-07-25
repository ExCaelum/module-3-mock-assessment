class Station

  def self.service
    @@service ||= StationService.new
  end

  def self.all(zip)
    stations = service.get_stations(zip)
  end


end
