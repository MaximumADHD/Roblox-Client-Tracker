--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/ScalarLeafsRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local ScalarLeafsRule = require(validationWorkspace.rules.ScalarLeafsRule).ScalarLeafsRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, ScalarLeafsRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Scalar leafs", function()
		it("valid scalar selection", function()
			expectValid(
				expect,
				[[
				fragment scalarSelection on Dog {
					barks
				}
			]]
			)
		end)

		it("object type missing selection", function()
			expectErrors(
				expect,
				[[
      query directQueryOnObjectWithoutSubFields {
        human
      }
			]]
			).toEqual({
				{
					message = 'Field "human" of type "Human" must have a selection of subfields. Did you mean "human { ... }"?',
					locations = { { line = 3, column = 9 } },
				},
			})
		end)

		it("interface type missing selection", function()
			expectErrors(
				expect,
				[[
      {
        human { pets }
      }
			]]
			).toEqual({
				{
					message = 'Field "pets" of type "[Pet]" must have a selection of subfields. Did you mean "pets { ... }"?',
					locations = { { line = 3, column = 17 } },
				},
			})
		end)

		it("valid scalar selection with args", function()
			expectValid(
				expect,
				[[
				fragment scalarSelectionWithArgs on Dog {
					doesKnowCommand(dogCommand: SIT)
				}
			]]
			)
		end)

		it("scalar selection not allowed on Boolean", function()
			expectErrors(
				expect,
				[[
      fragment scalarSelectionsNotAllowedOnBoolean on Dog {
        barks { sinceWhen }
      }
			]]
			).toEqual({
				{
					message = 'Field "barks" must not have a selection since type "Boolean" has no subfields.',
					locations = { { line = 3, column = 15 } },
				},
			})
		end)

		it("scalar selection not allowed on Enum", function()
			expectErrors(
				expect,
				[[
      fragment scalarSelectionsNotAllowedOnEnum on Cat {
        furColor { inHexDec }
      }
			]]
			).toEqual({
				{
					message = 'Field "furColor" must not have a selection since type "FurColor" has no subfields.',
					locations = { { line = 3, column = 18 } },
				},
			})
		end)

		it("scalar selection not allowed with args", function()
			expectErrors(
				expect,
				[[
      fragment scalarSelectionsNotAllowedWithArgs on Dog {
        doesKnowCommand(dogCommand: SIT) { sinceWhen }
      }
			]]
			).toEqual({
				{
					message = 'Field "doesKnowCommand" must not have a selection since type "Boolean" has no subfields.',
					locations = { { line = 3, column = 42 } },
				},
			})
		end)

		it("Scalar selection not allowed with directives", function()
			expectErrors(
				expect,
				[[
      fragment scalarSelectionsNotAllowedWithDirectives on Dog {
        name @include(if: true) { isAlsoHumanName }
      }
			]]
			).toEqual({
				{
					message = 'Field "name" must not have a selection since type "String" has no subfields.',
					locations = { { line = 3, column = 33 } },
				},
			})
		end)

		it("Scalar selection not allowed with directives and args", function()
			expectErrors(
				expect,
				[[
      fragment scalarSelectionsNotAllowedWithDirectivesAndArgs on Dog {
        doesKnowCommand(dogCommand: SIT) @include(if: true) { sinceWhen }
      }
			]]
			).toEqual({
				{
					message = 'Field "doesKnowCommand" must not have a selection since type "Boolean" has no subfields.',
					locations = { { line = 3, column = 61 } },
				},
			})
		end)
	end)
end
