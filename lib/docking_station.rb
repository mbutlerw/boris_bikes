require_relative 'bike'

class DockingStation


attr_reader :bike

# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike
	fail 'No bikes available' unless @bike
	@bike
end

def dock(bike)
	fail 'Exceeded capacity' if @bike
	@bike = bike

end


end
