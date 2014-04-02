require 'spec_helper'

describe Sighting do
  it { should belong_to :location }
  it { should belong_to :species }
end
