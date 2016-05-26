require_relative 'bike'

class DockingStation


attr_reader :bikes



# in this case, @bike is actually 'nil' - which EVALUATES to 'false' (falsey)
def release_bike
	fail 'No bikes available' unless @bikes
	@bikes
end

def dock(bike)
	fail 'Exceeded capacity' if @bikes
	@bikes << bike

end


end
