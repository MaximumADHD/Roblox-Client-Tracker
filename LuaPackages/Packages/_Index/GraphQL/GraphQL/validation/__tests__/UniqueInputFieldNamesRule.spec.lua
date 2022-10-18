--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/UniqueInputFieldNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local UniqueInputFieldNamesRule =
		require(
			validationWorkspace.rules.UniqueInputFieldNamesRule
		).UniqueInputFieldNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, UniqueInputFieldNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Unique input field names", function()
		it("input object with fields", function()
			expectValid(
				expect,
				[[
				{
					field(arg: { f: true })
				}
			]]
			)
		end)

		it("same input object within two args", function()
			expectValid(
				expect,
				[[
				{
					field(arg1: { f: true }, arg2: { f: true })
				}
			]]
			)
		end)

		it("multiple input object fields", function()
			expectValid(
				expect,
				[[
				{
					field(arg: { f1: "value", f2: "value", f3: "value" })
				}
			]]
			)
		end)

		it("allows for nested input objects with similar fields", function()
			expectValid(
				expect,
				[[
				{
					field(arg: {
						deep: {
							deep: {
							id: 1
							}
							id: 1
						}
						id: 1
					})
				}
			]]
			)
		end)

		it("duplicate input object fields", function()
			expectErrors(
				expect,
				[[
      {
        field(arg: { f1: "value", f1: "value" })
      }
			]]
			).toEqual({
				{
					message = 'There can be only one input field named "f1".',
					locations = {
						{ line = 3, column = 22 },
						{ line = 3, column = 35 },
					},
				},
			})
		end)

		it("many duplicate input object fields", function()
			expectErrors(
				expect,
				[[
      {
        field(arg: { f1: "value", f1: "value", f1: "value" })
      }
			]]
			).toEqual({
				{
					message = 'There can be only one input field named "f1".',
					locations = {
						{ line = 3, column = 22 },
						{ line = 3, column = 35 },
					},
				},
				{
					message = 'There can be only one input field named "f1".',
					locations = {
						{ line = 3, column = 22 },
						{ line = 3, column = 48 },
					},
				},
			})
		end)

		it("nested duplicate input object fields", function()
			expectErrors(
				expect,
				[[
      {
        field(arg: { f1: {f2: "value", f2: "value" }})
      }
			]]
			).toEqual({
				{
					message = 'There can be only one input field named "f2".',
					locations = {
						{ line = 3, column = 27 },
						{ line = 3, column = 40 },
					},
				},
			})
		end)
	end)
end
