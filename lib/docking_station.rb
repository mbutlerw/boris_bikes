require_relative 'bike'



class DockingStation

DEFAULT_CAPACITY = 20
attr_reader :capacity, :storage

def initialize(capacity = DEFAULT_CAPACITY)
	@bikes = []
	@capacity = capacity
end
# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike
	fail 'No bikes available' if empty?
	fail "Bike is broken." unless bikes.last.working?
	bikes.pop
end

def dock(bike)
	fail 'Exceeded capacity' if full?
	bikes << bike
end

private

attr_reader :bikes

def full?
	return bikes.length >= capacity
end

def empty?
	return bikes.empty?
end


end
