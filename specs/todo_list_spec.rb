require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require '../todo_list'
require '../todo_list_item'

class TestTodoList < MiniTest::Test


	def setup
		
		@todo_list_item = TodoListItem.new("This is the first item", false)
		@todo_list = TodoList.new([@todo_list_item, @todo_list_item])
		

	end

	def test_can_access_items
		items_array = []
		@todo_list.each do |item| 
			items_array << item
		end
		assert_equal(@todo_list_item, items_array[0])
	end

	

	def test_that_can_handle_items__one
		@todo_list = TodoList.new(@todo_list_item)
	end

	def test_that_can_handle_items__array
		@todo_list = TodoList.new([@todo_list_item])
	end







end