require 'van'
require 'garage'

describe Van do
  it "should pick up fixed bikes form garage" do
    #bike_fixed = double(:bike, broken?: false)
    #garage = Garage.new
    #garage.take_broken_bikes(bike)
    expect(subject.take_fixed_bikes).to eq $fixed_bikes


  end
end
