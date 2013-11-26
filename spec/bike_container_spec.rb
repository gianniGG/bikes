require 'bike_container'

class ContainerHolder
  
  include BikeContainer 
end

describe BikeContainer do
  
  let(:bike) {Bike.new}
  let(:holder) {ContainerHolder.new}
    
  specify " it should accept a bike" do        
    # we expect the holder to have 0 bikes
    expect(holder.bike_count).to eq(0)
    # let's dock a bike into the holder
    holder.dock(bike)    
    # now we expect the holder to have 1 bike
    expect(holder.bike_count).to eq(1)
  end

  specify "empty should be true when BikeContainer is true" do
  expect(holder.empty?).to be_true
  end 
end