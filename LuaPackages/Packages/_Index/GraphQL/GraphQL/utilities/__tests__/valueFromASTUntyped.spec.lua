--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/valueFromASTUntyped-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local rootWorkspace = srcWorkspace.Parent
	local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
	local Number = LuauPolyfill.Number
	local NaN = Number.NaN

	local parseValue = require(srcWorkspace.language.parser).parseValue
	local valueFromASTUntyped =
		require(script.Parent.Parent.valueFromASTUntyped).valueFromASTUntyped

	local NULL = require(srcWorkspace.luaUtils.null)

	describe("valueFromASTUntyped", function()
		local function expectValueFrom(expect_, valueText: string, variables)
			local ast = parseValue(valueText)
			local value = valueFromASTUntyped(ast, variables)
			return expect_(value)
		end

		it("parses simple values", function()
			expectValueFrom(expect, "null").to.equal(NULL)
			expectValueFrom(expect, "true").to.equal(true)
			expectValueFrom(expect, "false").to.equal(false)
			expectValueFrom(expect, "123").to.equal(123)
			expectValueFrom(expect, "123.456").to.equal(123.456)
			expectValueFrom(expect, '"abc123"').to.equal("abc123")
		end)

		it("parses lists of values", function()
			expectValueFrom(expect, "[true, false]").toEqual({ true, false })
			expectValueFrom(expect, "[true, 123.45]").toEqual({ true, 123.45 })
			expectValueFrom(expect, "[true, null]").toEqual({ true, NULL })
			expectValueFrom(expect, '[true, ["foo", 1.2]]').toEqual({ true, { "foo", 1.2 } })
		end)

		it("parses input objects", function()
			expectValueFrom(expect, "{ int: 123, bool: false }").toEqual({
				int = 123,
				bool = false,
			})
			expectValueFrom(expect, '{ foo: [ { bar: "baz"} ] }').toEqual({
				foo = { { bar = "baz" } },
			})
		end)

		it("parses enum values as plain strings", function()
			expectValueFrom(expect, "TEST_ENUM_VALUE").to.equal("TEST_ENUM_VALUE")
			expectValueFrom(expect, "[TEST_ENUM_VALUE]").toEqual({ "TEST_ENUM_VALUE" })
		end)

		it("parses variables", function()
			expectValueFrom(expect, "$testVariable", { testVariable = "foo" }).toEqual("foo")
			expectValueFrom(expect, "[$testVariable]", { testVariable = "foo" }).toEqual({
				"foo",
			})
			expectValueFrom(expect, "{a:[$testVariable]}", {
				testVariable = "foo",
			}).toEqual({ a = { "foo" } })
			expectValueFrom(expect, "$testVariable", { testVariable = NULL }).toEqual(NULL)
			-- ROBLOX deviation: no matcher for .to.satisfy
			expect(Number.isNaN(expectValueFrom(expect, "$testVariable", { testVariable = NaN }))).to.be.ok()
			expectValueFrom(expect, "$testVariable", {}).toEqual(nil)
			expectValueFrom(expect, "$testVariable", NULL).toEqual(nil)
		end)
	end)
end
