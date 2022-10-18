--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/VariablesAreInputTypesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local VariablesAreInputTypesRule =
		require(
			validationWorkspace.rules.VariablesAreInputTypesRule
		).VariablesAreInputTypesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, VariablesAreInputTypesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Variables are input types", function()
		it("input types are valid", function()
			expectValid(
				expect,
				[[
				query Foo($a: String, $b: [Boolean!]!, $c: ComplexInput) {
					field(a: $a, b: $b, c: $c)
				}
			]]
			)
		end)

		it("output types are invalid", function()
			expectErrors(
				expect,
				[=[
      query Foo($a: Dog, $b: [[CatOrDog!]]!, $c: Pet) {
        field(a: $a, b: $b, c: $c)
      }
			]=]
			).toEqual({
				{
					locations = { { line = 2, column = 21 } },
					message = 'Variable "$a" cannot be non-input type "Dog".',
				},
				{
					locations = { { line = 2, column = 30 } },
					message = 'Variable "$b" cannot be non-input type "[[CatOrDog!]]!".',
				},
				{
					locations = { { line = 2, column = 50 } },
					message = 'Variable "$c" cannot be non-input type "Pet".',
				},
			})
		end)
	end)
end
