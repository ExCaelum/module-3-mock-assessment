class Station < OpenStruct

  def self.service
    @@service ||= StationService.new
  end

  def self.all(zip)
    station_obj = []
    stations = service.get_stations(zip)
    stations["fuel_stations"].each do |station|
      station_obj << Station.new(station)
    end
    station_obj
  end


end
