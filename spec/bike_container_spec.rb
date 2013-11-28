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

  specify "that bikes are broken" do
    working_bike = Bike.new #create a new bike 
    broken_bike = Bike.new
    another_broken_bike = Bike.new
    broken_bike.break #we break a bike
    another_broken_bike.break
    holder.dock(working_bike)
    holder.dock(broken_bike)
    holder.dock(another_broken_bike)
    broken_bike_list = holder.broken_bikes
    expect(broken_bike_list).to eq([broken_bike, another_broken_bike])
  end

  it "should be able to dock a bike into another container" do
    another_holder = ContainerHolder.new #create new holder
    bike = Bike.new # Add a new bike
    holder.dock(bike) #put it in the container
    expect(holder.bike_count).to eq(1)
    expect(another_holder.bike_count).to eq(0)
    another_holder.take_items_from(holder)
    expect(holder.bike_count).to eq(0)
    expect(another_holder.bike_count).to eq(1)
  end


end