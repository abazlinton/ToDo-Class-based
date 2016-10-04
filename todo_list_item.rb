class TodoListItem


	attr_reader :text, :complete

	def initialize(text, status)
		@text = text
		@complete = status
	end

	def complete?
		return @complete
	end

	def mark_complete
		@complete = true
	end

	def mark_incomplete
		@complete = false
	end

	def change_text(text)
		@text = text
	end


end