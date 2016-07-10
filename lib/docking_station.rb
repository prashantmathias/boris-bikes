require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes docked" if empty?
    fail "Bike is broken" if bikes.last.broken?
    bikes.pop
  end

  def dock(bike)
    fail "docking station full" if full?
    bikes << bike
  end

  private

  def full?
    bikes.length >= @capacity
  end

  def empty?
    bikes.empty?
  end



end
