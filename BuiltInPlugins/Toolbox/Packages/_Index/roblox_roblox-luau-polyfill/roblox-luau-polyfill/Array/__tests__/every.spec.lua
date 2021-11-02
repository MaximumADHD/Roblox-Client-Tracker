--!nocheck
-- Tests adapted directly from examples at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local every = require(Array.every)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("Invalid argument", function()
		jestExpect(function()
			every(nil, function() end)
		end).toThrow()
		jestExpect(function()
			every({0, 1}, nil)
		end).toThrow()
	end)

	it("Testing size of all array elements", function()
		local isBigEnough = function(element, index, array)
			return element >= 10
		end
		jestExpect(every(
			{12, 5, 8, 130, 44},
			isBigEnough
		)).toEqual(false)
		jestExpect(every(
			{12, 54, 18, 130, 44},
			isBigEnough
		)).toEqual(true)
	end)

	it("Modifying initial array", function()
		local arr = {1, 2, 3, 4}
		local expected = {1, 1, 2}
		jestExpect(every(
			arr,
			function(elem, index, a)
				a[index + 1] -= 1
				jestExpect(a[index]).toEqual(expected[index])
				return elem < 2
			end
		)).toEqual(false)
		jestExpect(arr).toEqual({1, 1, 2, 3})
	end)

	it("Appending to initial array", function()
		local arr = {1, 2, 3}
		local expected = {1, 2, 3}
		jestExpect(every(
			arr,
			function(elem, index, a)
				table.insert(a, "new")
				jestExpect(a[index]).toEqual(expected[index])
				return elem < 4
			end
		)).toEqual(true)
		jestExpect(arr).toEqual({1, 2, 3, "new", "new", "new"})
	end)

	it("Deleting from inital array", function()
		local arr = {1, 2, 3, 4}
		local expected = {1, 2}
		jestExpect(every(
			arr,
			function(elem, index, a)
				table.remove(a)
				jestExpect(a[index]).toEqual(expected[index])
				return elem < 4
			end
		)).toEqual(true)
		jestExpect(arr).toEqual({1, 2})
	end)
end