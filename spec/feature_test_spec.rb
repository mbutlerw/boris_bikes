require 'docking_station'
require 'van'

describe "Feature test" do
	it "works" do
		station = DockingStation.new
		5.times {station.dock(Bike.new(false))}
		5.times {station.dock(Bike.new)}
		broken_bike = station.release_bike
		van1 = Van.new
		van1.load(broken_bike)
		unloaded_broken_bike = van1.unload
		garage1 = Garage.new
		garage1.accept(unloaded_broken_bike)
		fixed_bike = garage1.release_bike
		van2 = Van.new
		van2.load(fixed_bike)
		unloaded_fixed_bike = van2.unload
		station.dock(unloaded_fixed_bike)
	end
end
