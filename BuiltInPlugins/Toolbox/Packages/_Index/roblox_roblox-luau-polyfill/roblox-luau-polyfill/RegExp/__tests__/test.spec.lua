return function()
	local RegExpModule = script.Parent.Parent
	local RegExp = require(RegExpModule)

	local LuauPolyfill = RegExpModule.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("returns true when the regex matches", function()
		local re = RegExp("a")
		jestExpect(re:test("a")).toEqual(true)
	end)

	it("returns false when the regex does not match", function()
		local re = RegExp("a")
		jestExpect(re:test("b")).toEqual(false)
	end)
end
