-- Tests adapted directly from examples at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local some = require(Array.some)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("Invalid argument", function()
		-- roblox-cli analyze fails because map is called with an
		-- invalid argument, so it needs to be cast to any
		local someAny: any = some
		jestExpect(function()
			someAny(nil, function() end)
		end).toThrow()
		jestExpect(function()
			someAny({0, 1}, nil)
		end).toThrow()
	end)

	it("Testing value of array elements", function()
		local isBiggerthan10 = function(element, index, array)
			return element > 10
		end
		jestExpect(some({2, 5, 8, 1, 4}, isBiggerthan10)).toEqual(false)
		jestExpect(some({12, 5, 8, 1, 4}, isBiggerthan10)).toEqual(true)
	end)

	it("Checking whether a value exists in an array", function()
		local fruits = {"apple", "banana", "mango", "guava"}
		local checkAvailability = function(arr, val)
			return some(arr, function(arrVal)
				return val == arrVal
			end)
		end
		jestExpect(checkAvailability(fruits, "kela")).toEqual(false)
		jestExpect(checkAvailability(fruits, "banana")).toEqual(true)
	end)

	it("Converting any value to Boolean", function()
		local truthy_values = {true, "true", 1}
		local getBoolean = function(value)
			return some(truthy_values, function(t)
				return t == value
			end)
		end
		jestExpect(getBoolean(false)).toEqual(false)
		jestExpect(getBoolean("false")).toEqual(false)
		jestExpect(getBoolean(1)).toEqual(true)
		jestExpect(getBoolean("true")).toEqual(true)
	end)
end