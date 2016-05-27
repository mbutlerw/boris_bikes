require 'garage'

describe Garage do

	it "responds to accept with one argument" do
		expect(subject).to respond_to(:accept).with(1).argument
	end







end
