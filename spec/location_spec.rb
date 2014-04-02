require 'spec_helper'

describe Location do
  it { should have_many :sightings }
  it { should have_many(:species).through :sightings}
end
