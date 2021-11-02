return function()
	--[[
		Tests in this file are from the Symbol code in Roact:
		https://github.com/Roblox/roact/blob/v1.3.1/src/Symbol.spec.lua

		and from interpretation of this spec:
		https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol
	]]
	local SymbolModule = script.Parent.Parent
	local Symbol = require(SymbolModule)
	local GlobalRegistry = require(SymbolModule.GlobalRegistry)

	local LuauPolyfill = SymbolModule.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	describe("New symbols", function()
		it("should give an opaque object", function()
			local symbol = Symbol("foo")

			jestExpect(typeof(symbol)).toEqual("userdata")
		end)

		it("should coerce to a default name if none is given", function()
			local symbol = Symbol()

			jestExpect(tostring(symbol)).toEqual("Symbol()")
		end)

		it("should coerce to the given name", function()
			local symbol = Symbol("foo")

			jestExpect(tostring(symbol)).toEqual("Symbol(foo)")
		end)

		it("should be unique when constructed", function()
			local symbolA = Symbol("abc")
			local symbolB = Symbol("abc")

			jestExpect(symbolA).never.toEqual(symbolB)
		end)
	end)

	describe("Global registry", function()
		beforeEach(function()
			GlobalRegistry.__clear()
		end)

		it("should return a symbol for items referenced for the first time", function()
			local fooSymbol = Symbol.for_("foo")
			local barSymbol = Symbol.for_("bar")

			jestExpect(typeof(fooSymbol)).toEqual(typeof(Symbol()))
			jestExpect(tostring(fooSymbol)).toEqual("Symbol(foo)")
			jestExpect(typeof(barSymbol)).toEqual(typeof(Symbol()))
			jestExpect(tostring(barSymbol)).toEqual("Symbol(bar)")
		end)

		it("should return the same symbol object for the same string", function()
			local fooSymbol1 = Symbol.for_("foo")
			local fooSymbol2 = Symbol.for_("foo")

			jestExpect(fooSymbol1).toEqual(fooSymbol2)
		end)
	end)
end
