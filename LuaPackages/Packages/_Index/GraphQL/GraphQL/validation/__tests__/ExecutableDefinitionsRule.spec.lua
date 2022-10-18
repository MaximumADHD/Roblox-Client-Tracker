--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/ExecutableDefinitionsRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local ExecutableDefinitionsRule =
		require(
			validationWorkspace.rules.ExecutableDefinitionsRule
		).ExecutableDefinitionsRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, ExecutableDefinitionsRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Executable definitions", function()
		it("with only operation", function()
			expectValid(
				expect,
				[[
				query Foo {
					dog {
						name
					}
				}
			]]
			)
		end)

		it("with operation and fragment", function()
			expectValid(
				expect,
				[[
				query Foo {
					dog {
						name
						...Frag
					}
				}

				fragment Frag on Dog {
					name
				}
			]]
			)
		end)

		it("with type definition", function()
			expectErrors(
				expect,
				[[
      query Foo {
        dog {
          name
        }
      }

      type Cow {
        name: String
      }

      extend type Dog {
        color: String
      }
			]]
			).toEqual({
				{
					message = 'The "Cow" definition is not executable.',
					locations = { { line = 8, column = 7 } },
				},
				{
					message = 'The "Dog" definition is not executable.',
					locations = { { line = 12, column = 7 } },
				},
			})
		end)

		it("with schema definition", function()
			expectErrors(
				expect,
				[[
      schema {
        query: Query
      }

      type Query {
        test: String
      }

      extend schema @directive
			]]
			).toEqual({
				{
					message = "The schema definition is not executable.",
					locations = { { line = 2, column = 7 } },
				},
				{
					message = 'The "Query" definition is not executable.',
					locations = { { line = 6, column = 7 } },
				},
				{
					message = "The schema definition is not executable.",
					locations = { { line = 10, column = 7 } },
				},
			})
		end)
	end)
end
