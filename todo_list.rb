class TodoList

	attr_reader :items

	def initialize(items)
		@items = items
		setup_items
	end

	def each(&block)
        return @items.each(&block)
    end

	def setup_items
		#binding.pry
		if @items.class != Array
			temp_items = [] 
			temp_items << @items
			@items = temp_items
		end
	

	end

end