def change(amount)

	exact_change = []
	{[25, 10, 5, 1].each do |coin|
		exact_change << [coin] * (amount / coin) if amount >= coin
		amount = amount - (amount / coin)

	end

	exact_change
end

	# return [25] * (amount / 25) if amount > 24

	# return [10] * (amount / 10) if amount > 9

	# return [5] * (amount / 5) if amount > 4

	# [1] * amount
