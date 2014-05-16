05/15/2014
- installed 'geokit' gem
- added gem 'geokit-rails' to Gemfile, bundle

05/16/2014
- added helpers/static_map_helper.rb from https://gist.github.com/mcasimir/2778938
- created locations_controller.rb
- added defaults to class Location to make it mappable
- created table locations
- fed locations with example records via rails console
- changed name of column "type" to "cat" ("type" can obviously not be used as a column name)
- changed name of column "title" to "name"
- changed name and datatype of columns longitude/string and latitude/string to lng/float and lat/float
- created a view for locations Controller for testing purposes (calling geokit methods to geocode address into lng and lat, retrieve data from locations and show map position)

next step:
- add form functionality to dynamically retrieve all locations within a given radius


