require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes docked"
    else
      @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.length >= 20
      raise "docking station full"
    else
      @bikes << bike
    end
  end

end
