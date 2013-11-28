require_relative "bike_container"

#Load the BikeCountainer file

class Garage

	include BikeContainer

	def initialize(options = {})
	self.capacity = options.fetch(:capacity, capacity)
	# self.capacity is calling the capacity=() method 
	end

	def fix_all_bikes
		fixed_bikes = []
		bikes.each do |bike| 
			puts bike
			fixed_bikes << bike.fix
		end
		fixed_bikes
	end


end