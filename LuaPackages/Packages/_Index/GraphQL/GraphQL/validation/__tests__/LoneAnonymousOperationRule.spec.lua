--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/LoneAnonymousOperationRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local LoneAnonymousOperationRule =
		require(
			validationWorkspace.rules.LoneAnonymousOperationRule
		).LoneAnonymousOperationRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, LoneAnonymousOperationRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Anonymous operation must be alone", function()
		it("no operations", function()
			expectValid(
				expect,
				[[
				fragment fragA on Type {
					field
				}
			]]
			)
		end)

		it("one anon operation", function()
			expectValid(
				expect,
				[[
				{
					field
				}
			]]
			)
		end)

		it("multiple named operations", function()
			expectValid(
				expect,
				[[
				query Foo {
					field
				}

				query Bar {
					field
				}
			]]
			)
		end)

		it("anon operation with fragment", function()
			expectValid(
				expect,
				[[
				{
					...Foo
				}
				fragment Foo on Type {
					field
				}
			]]
			)
		end)

		it("multiple anon operations", function()
			expectErrors(
				expect,
				[[
      {
        fieldA
      }
      {
        fieldB
      }
			]]
			).toEqual({
				{
					message = "This anonymous operation must be the only defined operation.",
					locations = { { line = 2, column = 7 } },
				},
				{
					message = "This anonymous operation must be the only defined operation.",
					locations = { { line = 5, column = 7 } },
				},
			})
		end)

		it("anon operation with a mutation", function()
			expectErrors(
				expect,
				[[
      {
        fieldA
      }
      mutation Foo {
        fieldB
      }
			]]
			).toEqual({
				{
					message = "This anonymous operation must be the only defined operation.",
					locations = { { line = 2, column = 7 } },
				},
			})
		end)

		it("anon operation with a subscription", function()
			expectErrors(
				expect,
				[[
      {
        fieldA
      }
      subscription Foo {
        fieldB
      }
			]]
			).toEqual({
				{
					message = "This anonymous operation must be the only defined operation.",
					locations = { { line = 2, column = 7 } },
				},
			})
		end)
	end)
end
