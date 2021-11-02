return function()
	local String = script.Parent.Parent
	local trim = require(String.trim)

	local LuauPolyfill = String.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("removes spaces at beginning", function()
		jestExpect(trim("  abc")).toEqual("abc")
	end)

	it("removes spaces at end", function()
		jestExpect(trim("abc   ")).toEqual("abc")
	end)

	it("removes spaces at both ends", function()
		jestExpect(trim("  abc   ")).toEqual("abc")
	end)

	it("does not remove spaces in the middle", function()
		jestExpect(trim("a b c")).toEqual("a b c")
	end)

	it("removes all types of spaces", function()
		jestExpect(trim("\r\n\t\f\vabc")).toEqual("abc")
	end)

	it("returns an empty string if there are only spaces", function()
		jestExpect(trim("    ")).toEqual("")
	end)
end
