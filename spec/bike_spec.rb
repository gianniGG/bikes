#Boris Bikes - TEST part

require 'bike'

describe Bike do 
	
	let(:bike) {Bike.new} 
#is the same as writting bike = Bike.new eache time
#so that in my specify, i dont repeat it
	specify "it should not be broken after we create it" do
	#new object in Bike class
	expect(bike).not_to be_broken
	#expect an instance of this class
	#a method "broken?" that should return false
	end
	
	specify "it should be able to break" do 
	bike.break
	expect(bike).to be_broken
	end

	specify "it should be able to get fixed" do
	bike.break
	bike.fix
	expect(bike).not_to be_broken
	end
end

