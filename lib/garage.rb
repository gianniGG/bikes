require_relative "bike_container"
#Load the BikeCountainer file

class Garage

	include BikeContainer

	def initialize(options = {})
	self.capacity = options.fetch(:capacity, capacity)
	# self.capacity is calling the capacity=() method 
	end


end