return function()
	local NumberModule = script.Parent
	local Number = require(NumberModule)

	local LuauPolyfill = NumberModule.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("has MAX_SAFE_INTEGER constant", function()
		jestExpect(Number.MAX_SAFE_INTEGER).toEqual(jestExpect.any("number"))
	end)

	it("has MIN_SAFE_INTEGER constant", function()
		jestExpect(Number.MIN_SAFE_INTEGER).toEqual(jestExpect.any("number"))
	end)
end
