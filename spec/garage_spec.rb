require 'garage'

describe Garage do

	it "responds to receive_bikes with one argument" do
		expect(subject).to respond_to(:receive_bikes).with(1).argument
	end

	it "responds to fix_bikes" do
		expect(subject).to respond_to(:fix_bikes)
	end
  





end
