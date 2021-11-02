return function()
	local String = script.Parent.Parent
	local trimEnd = require(String.trimEnd)

	local LuauPolyfill = String.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("does not remove spaces at beginning", function()
		jestExpect(trimEnd("  abc")).toEqual("  abc")
	end)

	it("removes spaces at end", function()
		jestExpect(trimEnd("abc   ")).toEqual("abc")
	end)

	it("removes spaces at only at end", function()
		jestExpect(trimEnd("  abc   ")).toEqual("  abc")
	end)

	it("does not remove spaces in the middle", function()
		jestExpect(trimEnd("a b c")).toEqual("a b c")
	end)

	it("removes all types of spaces", function()
		jestExpect(trimEnd("abc\r\n\t\f\v")).toEqual("abc")
	end)

	it("returns an empty string if there are only spaces", function()
		jestExpect(trimEnd("    ")).toEqual("")
	end)
end
