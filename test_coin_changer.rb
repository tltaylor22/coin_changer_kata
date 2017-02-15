require 'minitest/autorun'
require_relative 'coin_changer.rb'

class TestCoinChanger < Minitest::Test

	def test_1_equal_1
		assert_equal(1,1)
	end

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.
# eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
# eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
# eg. If you have 93 cents {:quarter => 3, :dime => 1, nickel => 1, :penny => 3}

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

	def test_1_nickele_for_1_nickel
		amount = 5
		assert_equal([5], change(amount))
	end

	# def test_2_nickeles_for_10
	# 	amount = 10
	# 	assert_equal([5, 5], change(amount))
	# end	

	# def test_3_nickeles_for_15
	# 	amount = 15
	# 	assert_equal([5, 5, 5], change(amount))
	# end		

	def test_1_dime_for_1_dime
		amount = 10
		assert_equal([10], change(amount))
	end	

	def	test_2_dimes_for_20
		amount = 20
		assert_equal([10, 10], change(amount))
	end

	def test_1_quarter_for_1_quarter
		amount = 25
		assert_equal([25], change(amount))
	end

	def test_2_quarters_for_50
		amount = 50
		assert_equal([25, 25], change(amount))
	end

	def test_3_quarters_for_75
		amount = 75
		assert_equal([25, 25, 25], change(amount))
	end

	def test_1_dime_4_pennies_for_14
		amount = 14
		assert_equal([10, 1, 1, 1, 1], change(amount))
	end

end