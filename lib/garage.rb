require_relative 'docking_station'

class Garage
  attr_accessor :broken_bikes, :fixed_bikes

  def initialize
    $broken_bikes = []
    @broken_bikes = $broken_bikes
  end

  def take_broken_bikes
    $bikes.each do |x|
      $broken_bikes << x if x.broken?
    end
  end

  def fixed_bikes
    $fixed_bikes = []
    @fixed_bikes = $fixed_bikes
    @broken_bikes.each do |x|
      $fixed_bikes << x.report_fixed
   end

  end

end
