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
- added form functionality for user input to dynamically retrieve all locations within a given radius

05/17/2014
- added all controllers 
- added all views

05/18/2014
- all controllers work
- CRUD functionality for all 5 models work

05/19/2014
- authentication added
- users can register with email and password
- relation between models established
- all users can view all requests and offers
- requests and offers can only be updated/deleted by their authors
- field types adjusted (e.g. text_area, email_field, radio_buttons, etc.)
- carrierwave installed, for uploading pictures in the user profiles (not working yet)








