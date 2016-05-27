
require 'docking_station'

describe DockingStation do

	
		let(:bike) {double :bike, working?: true} 
		let(:broken_bike)  {double :bike, working?: false}
	

	


	

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end

		it "responds to release_bike" do
		expect(subject).to respond_to :release_bike
	    end

		it "does not release broken bikes" do
			
			subject.dock(broken_bike)
			expect{subject.release_bike}.to raise_error "Bike is broken."
		end

	end

	describe '#dock' do

		it "responds to dock" do
			expect(subject).to respond_to(:dock).with(1).argument
		end

		it 'Raises an error if we try to exceed bike docking capacity' do
			subject = DockingStation.new(5)
			5.times{subject.dock(bike)}
			expect {subject.dock(bike)}.to raise_error "Exceeded capacity"
		end


		it "Docks a working bike at the end of the array" do
			subject.dock(broken_bike)
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end

		it "Docks a broken bike at the beginning of the array" do
			subject.dock(bike)
			expect(subject.dock(broken_bike).first).to eq broken_bike
		end
	end
end

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.
