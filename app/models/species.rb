class Species <ActiveRecord::Base
  validates :name, :presence => true
  has_many :sightings
  has_many :locations, through: :sightings
end
