class vehicle
	def initialize(color,type)
		@color = color
		@type = type
	end
	def honk
		puts "Beep!"
	end
end

car = vehicle.new("black","convertible")
car.honk