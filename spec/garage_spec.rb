require 'garage'
require 'docking_station'

describe Garage do
  it "should take in broken bikes" do
    bike = double(:bike, broken?: true)
    staion = DockingStation.new
    staion.dock(bike)
    subject.take_broken_bikes
    expect(subject.broken_bikes.length).to eq 1
  end
end
