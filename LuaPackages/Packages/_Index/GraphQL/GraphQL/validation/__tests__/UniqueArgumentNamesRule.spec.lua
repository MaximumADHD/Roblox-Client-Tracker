--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueArgumentNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local UniqueArgumentNamesRule =
		require(validationWorkspace.rules.UniqueArgumentNamesRule).UniqueArgumentNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, UniqueArgumentNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Unique argument names", function()
		it("no arguments on field", function()
			expectValid(
				expect,
				[[
				{
					field
				}
			]]
			)
		end)

		it("no arguments on directive", function()
			expectValid(
				expect,
				[[
				{
					field @directive
				}
			]]
			)
		end)

		it("argument on field", function()
			expectValid(
				expect,
				[[
				{
					field(arg: "value")
				}
			]]
			)
		end)

		it("argument on directive", function()
			expectValid(
				expect,
				[[
				{
					field @directive(arg: "value")
				}
			]]
			)
		end)

		it("same argument on two fields", function()
			expectValid(
				expect,
				[[
				{
					one: field(arg: "value")
					two: field(arg: "value")
				}
			]]
			)
		end)

		it("same argument on field and directive", function()
			expectValid(
				expect,
				[[
				{
					field(arg: "value") @directive(arg: "value")
				}
			]]
			)
		end)

		it("same argument on two directives", function()
			expectValid(
				expect,
				[[
				{
					field @directive1(arg: "value") @directive2(arg: "value")
				}
			]]
			)
		end)

		it("multiple field arguments", function()
			expectValid(
				expect,
				[[
				{
					field(arg1: "value", arg2: "value", arg3: "value")
				}
			]]
			)
		end)

		it("multiple directive arguments", function()
			expectValid(
				expect,
				[[
				{
					field @directive(arg1: "value", arg2: "value", arg3: "value")
				}
			]]
			)
		end)

		it("duplicate field arguments", function()
			expectErrors(
				expect,
				[[
      {
        field(arg1: "value", arg1: "value")
      }
			]]
			).toEqual({
				{
					message = 'There can be only one argument named "arg1".',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 30 },
					},
				},
			})
		end)

		it("many duplicate field arguments", function()
			expectErrors(
				expect,
				[[
      {
        field(arg1: "value", arg1: "value", arg1: "value")
      }
			]]
			).toEqual({
				{
					message = 'There can be only one argument named "arg1".',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 30 },
					},
				},
				{
					message = 'There can be only one argument named "arg1".',
					locations = {
						{ line = 3, column = 15 },
						{ line = 3, column = 45 },
					},
				},
			})
		end)

		it("duplicate directive arguments", function()
			expectErrors(
				expect,
				[[
      {
        field @directive(arg1: "value", arg1: "value")
      }
			]]
			).toEqual({
				{
					message = 'There can be only one argument named "arg1".',
					locations = {
						{ line = 3, column = 26 },
						{ line = 3, column = 41 },
					},
				},
			})
		end)

		it("many duplicate directive arguments", function()
			expectErrors(
				expect,
				[[
      {
        field @directive(arg1: "value", arg1: "value", arg1: "value")
      }
			]]
			).toEqual({
				{
					message = 'There can be only one argument named "arg1".',
					locations = {
						{ line = 3, column = 26 },
						{ line = 3, column = 41 },
					},
				},
				{
					message = 'There can be only one argument named "arg1".',
					locations = {
						{ line = 3, column = 26 },
						{ line = 3, column = 56 },
					},
				},
			})
		end)
	end)
end
