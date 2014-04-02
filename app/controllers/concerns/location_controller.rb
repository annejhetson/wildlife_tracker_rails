class LocationController < ApplicationController
  def index
    @locations = Location.all
    render('locations/index.html.erb')
  end
end
