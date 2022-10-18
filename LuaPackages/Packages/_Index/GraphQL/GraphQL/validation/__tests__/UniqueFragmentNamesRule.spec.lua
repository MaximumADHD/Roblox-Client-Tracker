--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueFragmentNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local UniqueFragmentNamesRule =
		require(validationWorkspace.rules.UniqueFragmentNamesRule).UniqueFragmentNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, UniqueFragmentNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Unique fragment names", function()
		it("no fragments", function()
			expectValid(
				expect,
				[[
				{
					field
				}
			]]
			)
		end)

		it("one fragment", function()
			expectValid(
				expect,
				[[
				{
					...fragA
				}

				fragment fragA on Type {
					field
				}
			]]
			)
		end)

		it("many fragments", function()
			expectValid(
				expect,
				[[
				{
					...fragA
					...fragB
					...fragC
				}
				fragment fragA on Type {
					fieldA
				}
				fragment fragB on Type {
					fieldB
				}
				fragment fragC on Type {
					fieldC
				}
			]]
			)
		end)

		it("inline fragments are always unique", function()
			expectValid(
				expect,
				[[
				{
					...on Type {
						fieldA
					}
					...on Type {
						fieldB
					}
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

		it("fragments named the same", function()
			expectErrors(
				expect,
				[[
      {
        ...fragA
      }
      fragment fragA on Type {
        fieldA
      }
      fragment fragA on Type {
        fieldB
      }
			]]
			).toEqual({
				{
					message = 'There can be only one fragment named "fragA".',
					locations = {
						{
							line = 5,
							column = 16,
						},
						{
							line = 8,
							column = 16,
						},
					},
				},
			})
		end)

		it("fragments named the same without being referenced", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Type {
        fieldA
      }
      fragment fragA on Type {
        fieldB
      }
			]]
			).toEqual({
				{
					message = 'There can be only one fragment named "fragA".',
					locations = {
						{
							line = 2,
							column = 16,
						},
						{
							line = 5,
							column = 16,
						},
					},
				},
			})
		end)
	end)
end
