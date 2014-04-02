class Location < ActiveRecord::Base
  has_many :sightings
  has_many :species, through: :sightings
end
