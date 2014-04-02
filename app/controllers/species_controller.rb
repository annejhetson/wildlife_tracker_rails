class SpeciesController < ApplicationController
  def index
    @species = Species.order(:name)
    render('species/index.html.erb')
  end

  def new
    @animal = Species.new()
    render('species/new.html.erb')
  end

  def create
    @animal = Species.new(:name => params[:name])
    if @animal.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def show
    @animal = Species.find(params[:id])
    @sightings = @animal.sightings
    render('species/show.html.erb')
  end

  def destroy
    @animal = Species.find(params[:id])
    @animal.destroy
    render('species/delete.html.erb')
  end

  def update
    @species = Species.all
    @animal = Species.find(params[:id])
    @animal.update(:name => params[:name])
    render('species/success.html.erb')
  end

  def edit
    @animal = Species.find(params[:id])
    render('species/edit.html.erb')
  end
end
