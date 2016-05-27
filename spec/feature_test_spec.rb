require 'docking_station'
require 'van'

describe "Feature test" do
	it "works" do
		station = DockingStation.new
		5.times {station.dock(Bike.new(false))}
		5.times {station.dock(Bike.new)}
		3.times {station.release_bike}
		broken_bikes = station.release_broken_bikes
		van1 = Van.new
		van1.receive_bikes(broken_bikes)
		unloaded_broken_bikes = van1.release_bikes
		garage1 = Garage.new
		garage1.receive_bikes(unloaded_broken_bikes)
		garage1.fix_bikes





	end
end