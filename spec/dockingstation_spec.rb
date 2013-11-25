require 'dockingstation'

describe DockingStation do

let(:bike) {Bike.new}
let(:station) {DockingStation.new}
	specify "it should accept a bike" do
	expect(station.bike_count).to eq(0)
	# let's dock a bike into the station
	station.dock(bike)    
	# now we expect the station to have 1 bike
	expect(station.bike_count).to eq(1)
  end

  specify "it should release a bike" do
  	station.dock(bike)
  	station.release(bike)
  	expect(station.bike_count).to eq(0)
  end

end
