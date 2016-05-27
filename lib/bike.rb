class Bike

   

   def initialize(status = true)
	 @working = status
   end

   def report_broken
	 @working = false
   end

   def working?
   	@working
   end

   def fix
   	@working = true
   end


end
