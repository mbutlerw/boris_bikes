require_relative 'bike_container'

class Van
	include BikeContainer 

	def load(bike)
		add_bike(bike)
	end

	def unload
		release_bike
	end

	private

	attr_reader :bikes

end