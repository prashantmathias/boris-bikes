require "./lib/garage.rb"

station = DockingStation.new

garage = Garage.new

bike = Bike.new

bike.report_broken

station.dock(bike)

station.bikes

garage.take_broken_bikes

garage.broken_bikes

print garage.fixed_bikes
