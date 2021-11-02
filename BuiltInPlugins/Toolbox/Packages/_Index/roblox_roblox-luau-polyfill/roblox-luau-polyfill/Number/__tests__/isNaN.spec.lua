return function()
	local Number = script.Parent.Parent
	local isNaN = require(Number.isNaN)

	local LuauPolyfill = Number.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("returns true when given 0/0", function()
		jestExpect(isNaN(0/0)).toEqual(true)
	end)

	it("returns false when given \"nan\"", function()
		jestExpect(isNaN("nan")).toEqual(false)
	end)

	it("returns false when given nil", function()
		jestExpect(isNaN(nil)).toEqual(false)
	end)

	it("returns false when given {}", function()
		jestExpect(isNaN({})).toEqual(false)
	end)

	it("returns false when given \"blabla\"", function()
		jestExpect(isNaN("blabla")).toEqual(false)
	end)

	it("returns false when given true", function()
		jestExpect(isNaN(true)).toEqual(false)
	end)

	it("returns false when given 37", function()
		jestExpect(isNaN(37)).toEqual(false)
	end)

	it("returns false when given an empty string", function()
		jestExpect(isNaN("")).toEqual(false)
	end)
end