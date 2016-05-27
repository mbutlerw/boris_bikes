module BikeContainer

	#has a capacity
	#receives bikes
	#releases bikes
  DEFAULT_CAPACITY = 20	

  def initialize(capacity = DEFAULT_CAPACITY)
  	@capacity = capacity
  	@bikes = []
  end

  def release_bikes
  	raise "#{self.class.name} is empty" if empty?
  	bikes.pop
  end

  def add_bike(bike)
  	raise "#{self.class.name} is full" if full?
  	bikes << bike
  end









  private

  attr_reader :capacity, :bikes




  def full?
    return bikes.length >= capacity
  end

  def empty?
	return bikes.empty?
  end





end
