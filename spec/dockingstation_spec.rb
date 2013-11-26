require 'dockingstation'

describe DockingStation do

let(:station) {DockingStation.new(:capacity => 123)}

	specify "it should allow setting default capacity on initialising" do
	expect(station.capacity).to eq(123)
  end
end
