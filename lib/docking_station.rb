require_relative 'bike'

class DockingStation


attr_reader :bikes

def initialize
	@bikes = []
end
# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike
	fail 'No bikes available' if empty?
	@bikes.pop
end

def dock(bike)
	fail 'Exceeded capacity' if full?
	@bikes << bike
end

private

def full?
	return @bikes.length >= 20
end

def empty?
	return @bikes.empty?
end


end
