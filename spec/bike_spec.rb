require 'bike'

	describe Bike do
		it {is_expected.to respond_to :working?}

		it {is_expected.to respond_to :broken?}

		it "The bike is broken after calling the broken method" do
			bike = Bike.new
			bike.broken?
			expect(bike.working?).to be false
		end

	end
