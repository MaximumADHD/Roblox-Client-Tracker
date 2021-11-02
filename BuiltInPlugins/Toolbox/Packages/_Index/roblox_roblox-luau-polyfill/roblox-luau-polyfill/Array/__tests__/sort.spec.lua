-- tests based on the examples provided on MDN web docs:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort

return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local sort = require(Array.sort)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("sorts string by default", function()
		local months = { "March", "Jan", "Feb", "Dec" }
		sort(months)
		jestExpect(months).toEqual({ "Dec", "Feb", "Jan", "March" })
	end)

	it("returns the same array", function()
		local array = {}
		jestExpect(sort(array)).toBe(array)
	end)

	it("compares non-string values as strings", function()
		local numbers = { 4, 5, 10, 88 }
		sort(numbers)
		jestExpect(numbers).toEqual({ 10, 4, 5, 88 })
	end)

	describe("with comparator", function()
		it("throws if comparator is not a function", function()
			jestExpect(function()
				sort({}, "foo")
			end).toThrow("invalid argument to Array.sort: compareFunction must be a function")
		end)

		it("throws when the compare function does not return a number", function()
			jestExpect(function()
				sort({ 2, 1 }, function()
					return "foo"
				end)
			end).toThrow("invalid result from compare function, expected number but got string")
		end)

		it("sorts a list of numbers", function()
			local numbers = { 4, 2, 5, 1, 3 }
			sort(numbers, function(a, b)
				return a - b
			end)
			jestExpect(numbers).toEqual({ 1, 2, 3, 4, 5 })
		end)

		it("sorts a list of objects", function()
			-- deviation: table.sort is not stable, so
			-- equal items does not stay in the same order.
			local items = {
				{ name = 'Edward', value = 21 },
				{ name = 'Sharpe', value = 36 },
				{ name = 'And', value = 45 },
				{ name = 'The', value = -12 },
				{ name = 'Magnetic', value = 13 },
				{ name = 'Zeros', value = 37 },
			}

			sort(items, function(a, b)
				return a.value - b.value
			end)
			jestExpect(items).toEqual({
				{ name = 'The', value = -12 },
				{ name = 'Magnetic', value = 13 },
				{ name = 'Edward', value = 21 },
				{ name = 'Sharpe', value = 36 },
				{ name = 'Zeros', value = 37 },
				{ name = 'And', value = 45 },
			})

			sort(items, function(a, b)
				local nameA = a.name:upper()
				local nameB = b.name:upper()

				if nameA < nameB then
					return -1
				end
				if nameA > nameB then
					return 1
				end

				return 0
			end)
			jestExpect(items).toEqual({
				{ name = 'And', value = 45 },
				{ name = 'Edward', value = 21 },
				{ name = 'Magnetic', value = 13 },
				{ name = 'Sharpe', value = 36 },
				{ name = 'The', value = -12 },
				{ name = 'Zeros', value = 37 },
			})
		end)
	end)
end
