class PagesController < ApplicationController

  def index
    @users = User.all
  end

  def search
    if params[:search].present?
      if params["lat"].present? & params["lng"].present?
        @latitude = params["lat"]
        @longitude = params["lng"]

        geolocation = [@latitude, @longitude]
      else
        geolocation = Geocoder.coordinates(params[:search])
        @latitude = geolocation[0]
        @longitude = geolocation[1]
      end
    @listings = Listing.where(active: true).near(geolocation, 1, order: 'distance')
    else
      @listings = Listing.where(active: true).all
      @latitude = @listings.to_a[0].latitude
      @longitude = @listings.to_a[0].longitude
    end
  end
end
