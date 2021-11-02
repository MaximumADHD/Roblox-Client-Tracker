-- Tests partially based on examples from:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/isArray
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local isArray = require(Array.isArray)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("returns false for non-tables", function()
		jestExpect(isArray(nil)).toEqual(false)
		jestExpect(isArray(1)).toEqual(false)
		jestExpect(isArray("hello")).toEqual(false)
		jestExpect(isArray(function() end)).toEqual(false)
		jestExpect(isArray(newproxy(false))).toEqual(false)
	end)

	it("returns false for tables with non-number keys", function()
		jestExpect(isArray({ hello = 1 })).toEqual(false)
		jestExpect(isArray({ [function() end] = 1 })).toEqual(false)
		jestExpect(isArray({ [newproxy(false)] = 1 })).toEqual(false)
	end)

	it("returns false for a table with non-integer key", function()
		jestExpect(isArray({ [0.5] = true })).toEqual(false)
	end)

	it("returns false for a table with a key equal to zero", function()
		jestExpect(isArray({ [0] = true })).toEqual(false)
	end)

	it("returns true for an empty table", function()
		jestExpect(isArray({})).toEqual(true)
	end)

	it("returns false for sparse arrays", function()
		jestExpect(isArray({
			[1] = "1",
			[3] = "3",
		})).toEqual(false)
		jestExpect(isArray({
			[2] = "2",
			[3] = "3",
		})).toEqual(false)
	end)

	it("returns false for tables with non-positive-number keys", function()
		jestExpect(isArray({
			[-2] = "-2",
			[2] = "2",
			[3] = "3",
		})).toEqual(false)
	end)

	it("returns true for valid arrays", function()
		jestExpect(isArray({ "a", "b", "c" })).toEqual(true)
		jestExpect(isArray({ 1, 2, 3 })).toEqual(true)
		jestExpect(isArray({ 1, "b", function() end })).toEqual(true)
	end)
end
