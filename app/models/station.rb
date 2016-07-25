class Station < OpenStruct

  def self.service
    @@service ||= StationService.new
  end

  def self.all(zip)
    stations = service.get_stations(zip)
    stations["fuel_stations"].each do |station|
      Station.new(station_hash)
    end
  end


end
