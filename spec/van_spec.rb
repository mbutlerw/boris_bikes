require 'van'

describe Van do
  it "responds to receive_bikes" do
  	expect(subject).to respond_to(:receive_bikes).with(1).argument
  end

  it "responds to release_bikes" do
  	expect(subject).to respond_to(:release_bikes)
  end

  it "#receive_bikes and #release_bikes" do
  	subject.receive_bikes([1,2,3])
  	expect(subject.release_bikes).to eq [1,2,3]
  end

  
end