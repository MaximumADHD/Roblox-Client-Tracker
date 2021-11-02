return function()
	local Number = script.Parent.Parent
	local isFinite = require(Number.isFinite)

	local LuauPolyfill = Number.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	-- test values taken from these examples:
	-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isFinite
	local trueValues = { 0, 2e64 }
	local falseValues = {
		math.huge,
		0/0,
		-math.huge,
		"0",
	}

	for _, value in ipairs(trueValues) do
		it(("returns true for %s"):format(tostring(value)), function()
			jestExpect(isFinite(value)).toEqual(true)
		end)
	end

	for _, value in ipairs(falseValues) do
		it(("returns false for %s"):format(tostring(value)), function()
			jestExpect(isFinite(value)).toEqual(false)
		end)
	end

	it("returns false for nil", function()
		jestExpect(isFinite(nil)).toEqual(false)
	end)
end
