require 'van'

describe Van do
  it "responds to receives_bikes" do
  	expect(subject).to respond_to(:receives_bikes).with(1).argument
  end

  it "responds to delivers_bikes" do
  	expect(subject).to respond_to(:delivers_bikes).with(1).argument
  end

  
end