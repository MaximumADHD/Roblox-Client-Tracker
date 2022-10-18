--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueVariableNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local UniqueVariableNamesRule =
		require(validationWorkspace.rules.UniqueVariableNamesRule).UniqueVariableNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, UniqueVariableNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Unique variable names", function()
		it("unique variable names", function()
			expectValid(
				expect,
				[[
				query A($x: Int, $y: String) { __typename }
				query B($x: String, $y: Int) { __typename }
			]]
			)
		end)

		it("duplicate variable names", function()
			expectErrors(
				expect,
				[[
      query A($x: Int, $x: Int, $x: String) { __typename }
      query B($x: String, $x: Int) { __typename }
      query C($x: Int, $x: Int) { __typename }
			]]
			).toEqual({
				{
					message = 'There can be only one variable named "$x".',
					locations = {
						{ line = 2, column = 16 },
						{ line = 2, column = 25 },
					},
				},
				{
					message = 'There can be only one variable named "$x".',
					locations = {
						{ line = 2, column = 16 },
						{ line = 2, column = 34 },
					},
				},
				{
					message = 'There can be only one variable named "$x".',
					locations = {
						{ line = 3, column = 16 },
						{ line = 3, column = 28 },
					},
				},
				{
					message = 'There can be only one variable named "$x".',
					locations = {
						{ line = 4, column = 16 },
						{ line = 4, column = 25 },
					},
				},
			})
		end)
	end)
end
