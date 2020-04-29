return function()
	local foldLeft = require(script.Parent.foldLeft)

	it("should call the callback", function()
		local a = {1, 2, 3}
		local called = 0

		foldLeft(a, 0, function()
			called = called + 1
		end)

		expect(called).to.equal(3)
	end)

	it("should not call the callback when the list is empty", function()
		local called = false

		foldLeft({}, 0, function()
			called = true
		end)

		expect(called).to.equal(false)
	end)

	it("should call the callback for each element", function()
		local a = {4, 5, 6}
		local copy = {}

		foldLeft(a, 0, function(accum, value, index)
			copy[index] = value
			return accum
		end)

		expect(#copy).to.equal(#a)

		for key, value in pairs(a) do
			expect(value).to.equal(copy[key])
		end
	end)

	it("should pass the same modified initial value to the callback", function()
		local a = {5, 4, 3}
		local initialValue = {}

		foldLeft(a, initialValue, function(accum)
			expect(accum).to.equal(initialValue)
			return accum
		end)
	end)

	it("should call the callback in the correct order", function()
		local a = {5, 4, 3}
		local index = 1

		foldLeft(a, 0, function(accum, value)
			expect(value).to.equal(a[index])
			index = index + 1
			return accum
		end)
	end)
end