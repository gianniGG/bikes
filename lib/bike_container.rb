module BikeContainer

  DEFAULT_CAPACITY = 10
  def initialize
  end

  def broken_bike
  end

  def bikes
    @bikes ||= []
  end

  def capacity    
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)    
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "Station is full" if full?
    bikes << bike
  end

  def release(bike)
    bikes.delete(bike)
  end


  def take_items_from(holder)
    container = self
    holder.bikes.each do |bike|
      container.dock(bike)
      holder.release(bike)
    end
    container
  end



  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject {|bike| bike.broken? }
  end

  def broken_bikes
    bikes.select{|bike| bike.broken? }
  end

  def empty?
    bike_count == 0
  end
end