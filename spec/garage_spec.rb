require 'garage'

describe Garage do

let(:garage) {Garage.new(:capacity => 200)}

	specify "it should set the garage capacity" do
	expect(garage.capacity).to eq(200)
  end
end
