return function()
	local Number = script.Parent.Parent
	local toExponential = require(script.Parent.Parent.toExponential)

	local LuauPolyfill = Number.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	describe("returns nil for invalid input", function()
		it("toExponential(nil)", function()
			jestExpect(toExponential(nil)).toEqual(nil)
		end)

		it("toExponential('abcd')", function()
			jestExpect(toExponential('abcd')).toEqual(nil)
		end)
	end)

	describe("throws for invalid values of fractionDigits", function()
		it("toExponential(77.1234, -1)", function()
			jestExpect(function() toExponential(77.1234, -1) end).toThrow()
		end)

		it("toExponential(77.1234, 101)", function()
			jestExpect(function() toExponential(77.1234, 101) end).toThrow()
		end)

		it("toExponential(77.1234, 'abcd')", function()
			jestExpect(function() toExponential(77.1234, 'abcd') end).toThrow()
		end)
	end)

	it("toExponential(77.1234)", function()
		jestExpect(toExponential(77.1234)).toEqual("7.71234e+1")
	end)

	it("toExponential(77.1234, 0)", function()
		jestExpect(toExponential(77.1234, 0)).toEqual("8e+1")
	end)

	it("toExponential(77.1234, 2)", function()
		jestExpect(toExponential(77.1234, 2)).toEqual("7.71e+1")
	end)

	it("toExponential(77.1234, 4)", function()
		jestExpect(toExponential(77.1234, 4)).toEqual("7.7123e+1")
	end)

	it("toExponential('77.1234')", function()
		jestExpect(toExponential(77.1234)).toEqual("7.71234e+1")
	end)

	it("toExponential(77)", function()
		jestExpect(toExponential(77)).toEqual("7.7e+1")
	end)
end