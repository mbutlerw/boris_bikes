
require 'docking_station'

describe DockingStation do

	let(:bike) {double :bike} 



	it "returns a working bike" do
		allow(bike).to receive(:working?).and_return true
		#expect(double(:bike)).to be_working
	end

	it "responds to dock" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it "Docks a bike when passed one" do
		allow(bike).to receive(:dock)
		expect(subject.dock(double(:bike)).last).to eq bike
	end

	it "it can't respond to bike" do
		expect(subject).not_to respond_to :bikes
	end

	it "doesn't dock a bike" do
		

		expect(subject.dock(double(:bike))).not_to eq bike
	end

	it "releases a previously docked bike" do
		allow(bike).to receive(:working?).and_return true
		subject.dock(double(:bike))
		expect(subject.release_bike).to eq bike
	end

	it "responds to capacity" do
		expect(subject).to respond_to :capacity
	end

	it "returns default capacity" do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end

		it "responds to release_bike" do
		expect(subject).to respond_to :release_bike
	    end

		it "does not release broken bikes" do
			allow(bike).to receive(:broken?)
			double(:bike).broken?
			subject.dock(double(:bike))
			expect{subject.release_bike}.to raise_error "Bike is broken."
		end

	end

	describe '#dock' do
		it 'Raises an error if we try to exceed bike docking capacity' do
			subject.capacity.times{subject.dock(double(:bike))}
			expect {subject.dock(double(:bike))}.to raise_error "Exceeded capacity"
			end
	end
end

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.
