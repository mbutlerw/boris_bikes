require_relative 'bike'
require_relative 'bike_container'




class DockingStation
	include BikeContainer


# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike
	fail 'No bikes available' if empty?
	bikes.delete working_bikes.pop
end

def dock(bike)
	add_bike(bike)
end

def release_broken_bike
	fail 'No bikes available' if empty?
	bikes.delete broken_bikes.pop
end
private

attr_reader :bikes ,:capacity

def working_bikes
	bikes.reject { |bike| !bike.working?}
end

def broken_bikes
	bikes.reject { |bike| bike.working?}
end




end
