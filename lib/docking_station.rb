require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike != nil
      @bike
    else
      raise "No bike docked"
    end
  end

  def dock(bike)
    if @bike != nil
      raise "docking station full"
    else
      @bike = bike
    end
  end

end
