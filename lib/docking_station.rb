require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    $bikes = []
    @bikes = $bikes
    @capacity = capacity
  end

  def release_bike
    fail "No bikes docked" if empty?
    fail "Bike is broken" if $bikes.last.broken?
    $bikes.pop
  end

  def dock(bike)
    fail "docking station full" if full?
    $bikes << bike
  end

  def add_fixed_bikes
    $bikes << $fixed_bikes
  end

  private

  def full?
    $bikes.length >= @capacity
  end

  def empty?
    $bikes.empty?
  end



end
