class SightingController < ApplicationController
  def index
    # @sightings = Sighting.all
    # @locations = Location.all
    @species = Species.all
    render('sightings/index.html.erb')
  end

  def create
    @animal = Species.find(params[:id])
    @sightings = @animal.sightings
    @sighting = Sighting.create(:species_id => params[:id], :date_seen => params[:date_seen], :location_id => params[:location_id])
    render('species/show.html.erb')
  end

  def create2
    @animal = Species.find(params[:species_id])
    @species = Species.all
    @locations = Location.all
    @sightings = @animal.sightings
    @sighting = Sighting.create(:species_id => params[:id], :date_seen => params[:date_seen], :location_id => params[:location_id])
    render('sightings/index.html.erb')
  end
end
