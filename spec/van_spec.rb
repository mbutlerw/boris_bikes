require 'van'

describe Van do
  it "responds to receive_bikes" do
  	expect(subject).to respond_to(:load).with(1).argument
  end

  it "responds to release_bikes" do
  	expect(subject).to respond_to(:unload)
  end

  it "#load and #unload" do
  	subject.load("fish")
  	expect(subject.unload).to eq "fish"
  end


end
