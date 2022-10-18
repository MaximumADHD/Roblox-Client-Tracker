--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/FragmentsOnCompositeTypesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local FragmentsOnCompositeTypesRule = require(
		validationWorkspace.rules.FragmentsOnCompositeTypesRule
	).FragmentsOnCompositeTypesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, FragmentsOnCompositeTypesRule, "\n" .. queryStr)
	end
	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Fragments on composite types", function()
		it("object is valid fragment type", function()
			expectValid(
				expect,
				[[
      fragment validFragment on Dog {
        barks
      }
			]]
			)
		end)

		it("interface is valid fragment type", function()
			expectValid(
				expect,
				[[
      fragment validFragment on Pet {
        name
      }
		]]
			)
		end)

		it("object is valid inline fragment type", function()
			expectValid(
				expect,
				[[
		  fragment validFragment on Pet {
			... on Dog {
			  barks
			}
		  }
			]]
			)
		end)

		it("interface is valid inline fragment type", function()
			expectValid(
				expect,
				[[
      fragment validFragment on Mammal {
        ... on Canine {
          name
        }
      }
			]]
			)
		end)

		it("inline fragment without type is valid", function()
			expectValid(
				expect,
				[[
      fragment validFragment on Pet {
        ... {
          name
        }
      }
			]]
			)
		end)

		it("union is valid fragment type", function()
			expectValid(
				expect,
				[[
      fragment validFragment on CatOrDog {
        __typename
      }
			]]
			)
		end)

		it("scalar is invalid fragment type", function()
			expectErrors(
				expect,
				[[
      fragment scalarFragment on Boolean {
        bad
      }
			]]
			).toEqual({
				{
					message = 'Fragment "scalarFragment" cannot condition on non composite type "Boolean".',
					locations = { { line = 2, column = 34 } },
				},
			})
		end)

		it("enum is invalid fragment type", function()
			expectErrors(
				expect,
				[[
      fragment scalarFragment on FurColor {
        bad
      }
			]]
			).toEqual({
				{
					message = 'Fragment "scalarFragment" cannot condition on non composite type "FurColor".',
					locations = { { line = 2, column = 34 } },
				},
			})
		end)

		it("input object is invalid fragment type", function()
			expectErrors(
				expect,
				[[
      fragment inputFragment on ComplexInput {
        stringField
      }
			]]
			).toEqual({
				{
					message = 'Fragment "inputFragment" cannot condition on non composite type "ComplexInput".',
					locations = { { line = 2, column = 33 } },
				},
			})
		end)

		it("scalar is invalid inline fragment type", function()
			expectErrors(
				expect,
				[[
      fragment invalidFragment on Pet {
        ... on String {
          barks
        }
      }
			]]
			).toEqual({
				{
					message = 'Fragment cannot condition on non composite type "String".',
					locations = { { line = 3, column = 16 } },
				},
			})
		end)
	end)
end
