class Search
  def initialize category_name, start_location, radius
    @category_name = category_name
    @start_location = start_location
    @radius = radius
  end

  def call
    nearby_locations = Location.within(@radius, origin: @start_location)
    nearby_locations.flat_map do |location|
      location.requests
    end.select do |request|
      request.category.title == @category_name
    end
  end
end
