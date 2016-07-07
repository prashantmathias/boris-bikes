require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes docked" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "docking station full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end
