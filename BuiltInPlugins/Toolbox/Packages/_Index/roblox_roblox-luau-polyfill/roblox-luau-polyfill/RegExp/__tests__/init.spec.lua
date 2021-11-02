return function()
	local RegExpModule = script.Parent.Parent
	local RegExp = require(RegExpModule)

	local LuauPolyfill = RegExpModule.Parent
	local instanceof = require(LuauPolyfill.instanceof)
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	describe("ignoreCase", function()
		it("has a `ignoreCase` property set to true if the `i` flag is used", function()
			jestExpect(RegExp("foo", "i").ignoreCase).toEqual(true)
		end)

		it("has a `ignoreCase` property set to false by default", function()
			jestExpect(RegExp("foo").ignoreCase).toEqual(false)
		end)
	end)

	describe("multiline", function()
		it("has a `multiline` property set to true if the `m` flag is used", function()
			jestExpect(RegExp("foo", "m").multiline).toEqual(true)
		end)

		it("has a `multiline` property set to false by default", function()
			jestExpect(RegExp("foo").multiline).toEqual(false)
		end)
	end)

	describe("global", function()
		-- deviation: `g` flag not implemented yet
		itSKIP("has a `global` property set to true if the `g` flag is used", function()
			jestExpect(RegExp("foo", "g").global).toEqual(true)
		end)

		-- deviation: `g` flag not implemented yet
		itSKIP("has a `global` property set to false by default", function()
			jestExpect(RegExp("foo").global).toEqual(false)
		end)
	end)

	describe("toString", function()
		it("has a correct tostring output", function()
			jestExpect(tostring(RegExp("pattern"))).toEqual("/pattern/")
		end)

		it("has a correct ordering of flags in tostring output", function()
			jestExpect(tostring(RegExp("regexp\\d", "mi"))).toEqual("/regexp\\d/im")
		end)
	end)

	describe("inheritance", function()
		it("follows our expectations for inheritance", function()
			jestExpect(instanceof(RegExp("test"), RegExp)).toEqual(true)
		end)
	end)

end
