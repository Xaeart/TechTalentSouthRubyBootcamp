class Item

	attr_accessor :name, :cost, :id, :category
	def initialize(name, cost, id, category)
		@name = name
		@cost = cost
		@id   = id
		@category = category
	end

end