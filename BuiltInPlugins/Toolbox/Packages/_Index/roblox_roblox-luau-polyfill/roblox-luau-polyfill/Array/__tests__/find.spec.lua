return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local find = require(Array.find)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	local function returnTrue()
		return true
	end

	local function returnFalse()
		return false
	end

	it("returns nil if the array is empty", function()
		jestExpect(find({}, returnTrue)).toEqual(nil)
	end)

	it("returns nil if the predicate is always false", function()
		jestExpect(find({1, 2, 3}, returnFalse)).toEqual(nil)
	end)

	it("returns the first element where the predicate is true", function()
		local result = find({3, 4, 5, 6}, function(element)
			return element % 2 == 0
		end)
		jestExpect(result).toEqual(4)
	end)

	it("passes the element, its index and the array to the predicate", function()
		local arguments = nil
		local array = {"foo"}
		find(array, function(...)
			arguments = {...}
		end)
		jestExpect(arguments).toEqual({"foo", 1, array})
	end)
end
