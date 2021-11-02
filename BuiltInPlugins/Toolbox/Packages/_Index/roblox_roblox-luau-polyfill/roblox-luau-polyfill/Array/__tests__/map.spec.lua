-- Tests adapted directly from examples at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local map = require(Array.map)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("Invalid argument", function()
		-- roblox-cli analyze fails because map is called with an
		-- invalid argument, so it needs to be cast to any
		local mapAny: any = map
		jestExpect(function()
			mapAny(nil, function() end)
		end).toThrow()
		jestExpect(function()
			mapAny({0, 1}, nil)
		end).toThrow()
	end)

	it("Mapping an array of numbers to an array of square roots", function()
		local numbers = {1, 4, 9}
		local roots = map(numbers, function(num)
			return math.sqrt(num)
		end)
		jestExpect(numbers).toEqual({1, 4, 9})
		jestExpect(roots).toEqual({1, 2, 3})
	end)

	it("Using map to reformat objects in an array", function()
		local kvArray = {
			{key = 1, value = 10},
			{key = 2, value = 20},
			{key = 3, value = 30}
		}
		local reformattedArray = map(kvArray, function(obj)
			local rObj = {}
			rObj[obj.key] = obj.value
			return rObj
		end)
		-- // reformattedArray is now [{1: 10}, {2: 20}, {3: 30}]
		jestExpect(reformattedArray).toEqual({
			{[1] = 10},
			{[2] = 20},
			{[3] = 30},
		})
	end)

	it("Mapping an array of numbers using a function containing an argument", function()
		local numbers = {1, 4, 9}
		local doubles = map(numbers, function(num)
			return num * 2
		end)
		jestExpect(doubles).toEqual({2, 8, 18})
	end)
end