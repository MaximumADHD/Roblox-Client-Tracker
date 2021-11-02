return function()
	local String = script.Parent.Parent
	local startsWith = require(String.startsWith)

	local LuauPolyfill = String.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("is true if the string starts with the given substring", function()
		jestExpect(startsWith("foo", "fo")).toEqual(true)
	end)

	it("is true if the string starts with the given substring at the given position", function()
		jestExpect(startsWith("foo", "o", 3)).toEqual(true)
	end)

	it("is false if the string does not start with the given substring", function()
		jestExpect(startsWith("foo", "b")).toEqual(false)
	end)

	it("is false if the initial search position is greater than the length", function()
		jestExpect(startsWith("foo", "f", 10)).toEqual(false)
	end)

	it("is true if the initial search position is lower than one and the string matches", function()
		jestExpect(startsWith("foo", "fo", -4)).toEqual(true)
	end)

	it("is true if the substring is empty", function()
		jestExpect(startsWith("foo", "")).toEqual(true)
		jestExpect(startsWith("foo", "", 10)).toEqual(true)
		jestExpect(startsWith("foo", "", -10)).toEqual(true)
	end)

	it("passes the examples on MDN", function()
		local str = "To be, or not to be, that is the question."

		jestExpect(startsWith(str, "To be")).toEqual(true)
		jestExpect(startsWith(str, "not to be")).toEqual(false)
		jestExpect(startsWith(str, "not to be", 11)).toEqual(true)
	end)
end
