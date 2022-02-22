return function()
	local fold = require(script.Parent.fold)

	it("should call the callback", function()
		local a = {
			Test = true
		}
		local called = false

		fold(a, 0, function()
			called = true
		end)

		expect(called).to.equal(true)
	end)

	it("should not call the callback when dictionary is empty", function()
		local a = {}
		local called = false

		fold(a, 0, function()
			called = true
		end)

		expect(called).to.equal(false)
	end)

	it("should call the callback for each pairs in the dictionary", function()
		local a = {
			First = 1,
			Second = 2,
			Third = 3
		}
		local totalPairs = 3
		local count = 0
		local copy = {}

		fold(a, 0, function(accum, key, value)
			copy[key] = value
			count = count + 1
			return accum
		end)

		expect(count).to.equal(totalPairs)

		for key, value in pairs(a) do
			expect(value).to.equal(copy[key])
		end
	end)

	it("should pass the same modified initial value to the callback", function()
		local a = {
			Test = true,
			SecondTest = true
		}
		local initialValue = {}

		fold(a, initialValue, function(accum)
			expect(accum).to.equal(initialValue)
			return accum
		end)
	end)

	it("should update the value as it calls the callback", function()
		local a = {
			Test = true,
			SecondTest = true
		}
		local counter = 0

		fold(a, counter, function(accum)
			expect(accum).to.equal(counter)
			counter = counter + 1
			return counter
		end)
	end)
end