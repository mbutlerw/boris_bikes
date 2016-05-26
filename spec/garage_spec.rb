require 'garage'

describe Garage do


  it "responds to fix" do
    expect(subject).to respond_to(:fix).with(1).argument
  end

  it "fixes a bike" do
    bike = Bike.new
    expect(subject.fix(bike)).to eq bike
  end





end
