require 'bike'

	describe Bike do
		it {is_expected.to respond_to :working?}

		it {is_expected.to respond_to :report_broken}

		it "The bike is broken after calling the broken method" do
			bike = Bike.new
			bike.report_broken
			expect(bike.working?).to be false
		end

		it "Bike is working by default" do
			bike = Bike.new
			expect(bike).to be_working
		end

	end
