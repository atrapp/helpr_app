Helpr!
============
(wdi-project1)

https://wdi-project1-helpr.herokuapp.com/

https://github.com/atrapp/helpr_app

Description
===========
A Web App for finding, requesting or offering help in different categories (e.g. Computer, Shopping, Pets etc.) and locations.

You can browse requests and offers without signing up. In case you want to place either an offer for help or a request, you need to sign up.

You can search by category and location. Simply put in your address and specify the radius within you look for requests or offers and select a category.

For testing purposes just click "Log-In" and log in as "user@test.com".


![image](https://raw.githubusercontent.com/atrapp/wdi-project1/master/app/assets/images/helpr.jpg "Helpr Hompage")

API
===
Geokit for Rails. Consists of a generic Gem (geokit) and a Rails plugin (geokit-rails). It calculates the distance of two points on the earth, provides geocoding (finding associated coordinates - latitude and longitude - from e.g. given addresses) from multiple providers (Google, Yahoo, Geocoder.us and Geocoder.ca). 

Passing on the coordinates to StaticMapHelper the app displays a Google map image with address marker.

Favorite code
=============
offers_controller.rb

def search

  @search_cat = params[:search_cat].values.first 

  @start_location = params[:start_location]

  @radius = params[:radius]

      
  if @search_cat !="" && @start_location !="" && @radius !="" 

    nearby_locations = Location.within(@radius, origin: @start_location)

    potential_offers = nearby_locations.map { |location| location.offers }.flatten

    @offers = potential_offers.select { |offer| offer.category.title == @search_cat} 

  else

    redirect_to offers_path

  end
  
end
