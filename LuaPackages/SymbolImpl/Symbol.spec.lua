return function()
	local Symbol = require(script.Parent.Symbol)

	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	describe("named", function()
		it("should give an opaque object", function()
			local symbol = Symbol.named("foo")

			jestExpect(typeof(symbol)).toBe("userdata")
		end)

		it("should coerce to the given name", function()
			local symbol = Symbol.named("foo")
			local location = tostring(symbol):find("foo")
			jestExpect(location).never.toBeNil()
		end)

		it("should be unique when constructed", function()
			local symbolA = Symbol.named("abc")
			local symbolB = Symbol.named("abc")

			jestExpect(symbolA).never.toBe(symbolB)
		end)
	end)

	describe("unnamed", function()
		it("should give an opaque object", function()
			local symbol = Symbol.unnamed()

			jestExpect(typeof(symbol)).toBe("userdata")
		end)

		it("should coerce to some string", function()
			local symbol = Symbol.unnamed()

			jestExpect(tostring(symbol)).toEqual(jestExpect.any("string"))
		end)

		it("should be unique when constructed", function()
			local symbolA = Symbol.unnamed()
			local symbolB = Symbol.unnamed()

			jestExpect(symbolA).never.toBe(symbolB)
		end)
	end)
end