require 'minitest/autorun'
require_relative 'coin_changer.rb'

class TestCoinChanger < Minitest::Test

	def test_1_equal_1
		assert_equal(1,1)
	end

	def test_1_penny_for_1_penny
		amount = 1
		assert_equal([1], change(amount))
	end

	def test_2_pennies_for_2_pennies
		amount = 2
		assert_equal([1, 1], change(amount))
	end

	def test_3_pennies_for_3_pennies
		amount = 3
		assert_equal([1, 1, 1], change(amount))
	end
end