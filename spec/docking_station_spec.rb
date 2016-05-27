
require 'docking_station'

describe DockingStation do


		let(:bike) {double :bike, working?: true}
		let(:broken_bike)  {double :bike, working?: false}



	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
			p "#{bike}"
		end

		it "responds to release_bike" do
		expect(subject).to respond_to :release_bike
	    end


	end

	describe "#release_broken_bike" do
		it "releases a broken_bike" do
			 10.times{subject.dock(bike)}
			 10.times{subject.dock(broken_bike)}
			 expect(subject.release_broken_bike).to eq broken_bike
		end
	end

	describe '#dock' do

		it "responds to dock" do
			expect(subject).to respond_to(:dock).with(1).argument
		end

		it 'Raises an error if we try to exceed bike docking capacity' do
			subject = DockingStation.new(5)
			5.times{subject.dock(bike)}
			expect {subject.dock(bike)}.to raise_error "DockingStation is full"
		end


		it "Docks and releases a bike" do
			subject.dock(broken_bike)
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end

	end
end

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.
