return function()
	local String = script.Parent.Parent
	local endsWith = require(String.endsWith)

	local LuauPolyfill = String.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("is true if the string ends with the given substring", function()
		jestExpect(endsWith("foo", "oo")).toEqual(true)
	end)

	it("is true if the string ends with the given substring at the given position", function()
		jestExpect(endsWith("hello", "ll", 4)).toEqual(true)
	end)

	it("is false if the string does not end with the given substring", function()
		jestExpect(endsWith("foo", "b")).toEqual(false)
	end)

	it("is true if the given length is greater than the string and it ends with the given substring", function()
		jestExpect(endsWith("foo", "oo", 10)).toEqual(true)
	end)

	it("is false if the given length is lower than one", function()
		jestExpect(endsWith("foo", "o", -4)).toEqual(false)
	end)

	it("is false if the substring is longer than the string", function()
		jestExpect(endsWith("ooo", "oooo")).toEqual(false)
	end)

	it("is true if the substring is empty", function()
		jestExpect(endsWith("foo", "")).toEqual(true)
		jestExpect(endsWith("foo", "", 10)).toEqual(true)
		jestExpect(endsWith("foo", "", -10)).toEqual(true)
	end)

	it("passes the examples on MDN", function()
		local str = "To be, or not to be, that is the question."

		jestExpect(endsWith(str, "question.")).toEqual(true)
		jestExpect(endsWith(str, "to be")).toEqual(false)
		jestExpect(endsWith(str, "to be", 19)).toEqual(true)
	end)
end
