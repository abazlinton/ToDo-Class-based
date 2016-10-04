require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require '../todo_list_item'

class TestTodoListItem < MiniTest::Test

	def setup
		@test_item = TodoListItem.new("Wash car", false)
	end

	def test_has_text
		assert_equal( "Wash car", @test_item.text )
	end

	def test_can_get_complete_status__method?
		assert_equal(false, @test_item.complete?)
	end

	def test_can_get_complete_status__reader
		assert_equal(false, @test_item.complete)
	end

	def test_can_be_marked_complete
		@test_item = TodoListItem.new("Wash car", false)
		@test_item.mark_complete
		assert_equal(true, @test_item.complete?)
	end

	def test_can_be_marked_incomplete
		@test_item = TodoListItem.new("Wash car", true)
		@test_item.mark_incomplete
		assert_equal(false, @test_item.complete?)
	end

	def test_can_change_text
		@test_item.change_text("Wobble")
		assert_equal("Wobble", @test_item.text)
	end




	

end