--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueOperationNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local UniqueOperationNamesRule =
		require(validationWorkspace.rules.UniqueOperationNamesRule).UniqueOperationNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, UniqueOperationNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Unique operation names", function()
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

		it("one named operation", function()
			expectValid(
				expect,
				[[
				query Foo {
					field
				}
			]]
			)
		end)

		it("multiple operations", function()
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

		it("multiple operations of different types", function()
			expectValid(
				expect,
				[[
				query Foo {
					field
				}

				mutation Bar {
					field
				}

				subscription Baz {
					field
				}
			]]
			)
		end)

		it("fragment and operation named the same", function()
			expectValid(
				expect,
				[[
				query Foo {
					...Foo
				}
				fragment Foo on Type {
					field
				}
			]]
			)
		end)

		it("multiple operations of same name", function()
			expectErrors(
				expect,
				[[
      query Foo {
        fieldA
      }
      query Foo {
        fieldB
      }
			]]
			).toEqual({
				{
					message = 'There can be only one operation named "Foo".',
					locations = {
						{ line = 2, column = 13 },
						{ line = 5, column = 13 },
					},
				},
			})
		end)

		it("multiple ops of same name of different types (mutation)", function()
			expectErrors(
				expect,
				[[
      query Foo {
        fieldA
      }
      mutation Foo {
        fieldB
      }
			]]
			).toEqual({
				{
					message = 'There can be only one operation named "Foo".',
					locations = {
						{ line = 2, column = 13 },
						{ line = 5, column = 16 },
					},
				},
			})
		end)

		it("multiple ops of same name of different types (subscription)", function()
			expectErrors(
				expect,
				[[
      query Foo {
        fieldA
      }
      subscription Foo {
        fieldB
      }
			]]
			).toEqual({
				{
					message = 'There can be only one operation named "Foo".',
					locations = {
						{ line = 2, column = 13 },
						{ line = 5, column = 20 },
					},
				},
			})
		end)
	end)
end
