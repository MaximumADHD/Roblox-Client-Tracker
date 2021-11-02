return function()
	local Object = script.Parent.Parent
	local keys = require(Object.keys)

	local LuauPolyfill = Object.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("returns an empty array for an empty table", function()
		jestExpect(#keys({})).toEqual(0)
	end)

	it("returns an array with the table keys", function()
		local t = { foo = true, bar = false }
		local result = keys(t)
		jestExpect(#result).toEqual(2)
		table.sort(result)
		jestExpect(result).toEqual({"bar", "foo"})
	end)

	it("returns an empty array given a number", function()
		jestExpect(keys(1)).toEqual({})
	end)

	it("returns an empty array given boolean", function()
		jestExpect(keys(true)).toEqual({})
		jestExpect(keys(false)).toEqual({})
	end)

	it("throws when given nil", function()
		jestExpect(function()
			keys(nil)
		end).toThrow("cannot extract keys from a nil value")
	end)

	-- deviation: JS has this behavior, which we don't specifically need now.
	-- To not risk making the function significantly slower, this behavior is
	-- not implemented
	itSKIP("returns an array of stringified index given an array", function()
		jestExpect(keys({true, false, true})).toEqual({"1", "2", "3"})
	end)
end
