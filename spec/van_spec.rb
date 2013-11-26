require 'van'

describe Van do

let(:van) {Van.new(:capacity => 20)}

	specify "it should define the van's capacity" do
	expect(van.capacity).to eq(20)
  end
end
