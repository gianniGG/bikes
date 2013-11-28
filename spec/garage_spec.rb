require 'garage'
require 'bike'

describe Garage do

let(:garage) {Garage.new(:capacity => 200)}

	specify "it should set the garage capacity" do
	expect(garage.capacity).to eq(200)
	end

	specify "Garage can fix bikes" do 
	dummy_bike = Bike.new #create a new bike
	dummy_bike.break #we break that shit up
	garage.dock(dummy_bike)
	garage.fix_all_bikes
	expect(garage.bikes.first).to_not be_broken
	end
end	
