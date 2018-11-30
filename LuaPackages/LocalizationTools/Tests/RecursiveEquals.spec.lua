local RecursiveEquals = require(script.Parent.RecursiveEquals)

return function()
	it("says two empty tables are equal", function()
		expect(RecursiveEquals({}, {})).to.equal(true)
	end)

	it("says a list with one thing in it is not the empty table", function()
		expect(RecursiveEquals({1}, {})).to.equal(false)
	end)

	it("says a number is not a table", function()
		expect(RecursiveEquals(1, {})).to.equal(false)
	end)

	it("says 1 ~= 2", function()
		expect(RecursiveEquals(1, 2)).to.equal(false)
	end)

	it("says a number is not a function", function()
		expect(RecursiveEquals(1, function() end)).to.equal(false)
	end)

	it("says a number is not equal to the true object", function()
		expect(RecursiveEquals(1, true)).to.equal(false)
	end)

	it("reports correctly that two identical tables are equal", function()
		assert( RecursiveEquals({
				["A"] = 3,
				["B"] = 4,
			}, {
				["A"] = 3,
				["B"] = 4,
			}))
	end)

	it("sees that tables with the same keys but different values are not equal", function()
		expect(RecursiveEquals({
			["A"] = 3,
			["B"] = 4,
		}, {
			["A"] = 3,
			["B"] = 5,
		}))
	end)

	it("sees that tables with different keys are not equal", function()
		expect(RecursiveEquals({
			["A"] = 3,
			["B"] = 4,
		}, {
			["A"] = 3,
		})).to.equal(false)
	end)

	it("is symmetric", function()
		local objs = {{
				["A"] = 4,
				["B"] = 3,
			}, {
				["A"] = 3,
				["B"] = 4,
			}, {
				["A"] = 3,
			}, {
				["A"] = {1,2,3},
			}, {
				["A"] = {1,2,3,4},
			},
			3,
			true,
			function() end,
			{},
		}

		for _,x in ipairs(objs) do
			for _,y in ipairs(objs) do
				expect(RecursiveEquals(x, y)).to.equal(x==y)
				expect(RecursiveEquals(x, y)).to.equal(RecursiveEquals(y, x))
			end
		end
	end)

	it("sees that two tables with one differing key are different", function()
		expect(RecursiveEquals({
			["A"] = 3,
		}, {
			["B"] = 3,
		})).to.equal(false)
	end)

	it("sees that two tables with identical table values are the same", function()
		expect(RecursiveEquals({
			["A"] = {1,2,3},
		}, {
			["A"] = {1,2,3},
		})).to.equal(true)
	end)

	it("sees that tables with values that differ in content are different", function()
		expect(RecursiveEquals({
			["A"] = {1,2,3},
		}, {
			["A"] = {0,1,2,3},
		})).to.equal(false)
	end)

	it("sees that tables with differently defined values are the same", function()
		expect(RecursiveEquals({
			["A"] = {
				x = 1,
				y = 2,
			},
		}, {
			["A"] = {
				y = 2,
				x = 1,
			},
		})).to.equal(true)
	end)

	it("sees that tables differing a few layers deep are in fact different", function()
		expect(RecursiveEquals({
			["A"] = {
				x = 1,
				y = 2,
			},
		}, {
			["A"] = {
				x = {},
				y = 2,
			},
		})).to.equal(false)
	end)
end
