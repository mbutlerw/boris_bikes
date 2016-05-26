require_relative 'bike'

class DockingStation


attr_reader :bikes

def initialize
	@bikes = []
end
# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike
	fail 'No bikes available' if @bikes.empty?
	@bikes
end

def dock(bike)
	fail 'Exceeded capacity' if @bikes.length >= 20
	@bikes << bike

end


end
