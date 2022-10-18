--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/NoFragmentCyclesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local NoFragmentCyclesRule =
		require(validationWorkspace.rules.NoFragmentCyclesRule).NoFragmentCyclesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, NoFragmentCyclesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: No circular fragment spreads", function()
		it("single reference is valid", function()
			expectValid(
				expect,
				[[
				fragment fragA on Dog { ...fragB }
				fragment fragB on Dog { name }
			]]
			)
		end)

		it("spreading twice is not circular", function()
			expectValid(
				expect,
				[[
				fragment fragA on Dog { ...fragB, ...fragB }
				fragment fragB on Dog { name }
			]]
			)
		end)

		it("spreading twice indirectly is not circular", function()
			expectValid(
				expect,
				[[
				fragment fragA on Dog { ...fragB, ...fragC }
				fragment fragB on Dog { ...fragC }
				fragment fragC on Dog { name }
			]]
			)
		end)

		it("double spread within abstract types", function()
			expectValid(
				expect,
				[[
				fragment nameFragment on Pet {
					... on Dog { name }
					... on Cat { name }
				}

				fragment spreadsInAnon on Pet {
					... on Dog { ...nameFragment }
					... on Cat { ...nameFragment }
				}
			]]
			)
		end)

		it("does not false positive on unknown fragment", function()
			expectValid(
				expect,
				[[
				fragment nameFragment on Pet {
					...UnknownFragment
				}
			]]
			)
		end)

		it("spreading recursively within field fails", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Human { relatives { ...fragA } },
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself.',
					locations = { { line = 2, column = 45 } },
				},
			})
		end)

		it("no spreading itself directly", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Dog { ...fragA }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself.',
					locations = { { line = 2, column = 31 } },
				},
			})
		end)

		it("no spreading itself directly within inline fragment", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Pet {
        ... on Dog {
          ...fragA
        }
      }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself.',
					locations = { { line = 4, column = 11 } },
				},
			})
		end)

		it("no spreading itself indirectly", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Dog { ...fragB }
      fragment fragB on Dog { ...fragA }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragB".',
					locations = {
						{ line = 2, column = 31 },
						{ line = 3, column = 31 },
					},
				},
			})
		end)

		it("no spreading itself indirectly reports opposite order", function()
			expectErrors(
				expect,
				[[
      fragment fragB on Dog { ...fragA }
      fragment fragA on Dog { ...fragB }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragB" within itself via "fragA".',
					locations = {
						{ line = 2, column = 31 },
						{ line = 3, column = 31 },
					},
				},
			})
		end)

		it("no spreading itself indirectly within inline fragment", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Pet {
        ... on Dog {
          ...fragB
        }
      }
      fragment fragB on Pet {
        ... on Dog {
          ...fragA
        }
      }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragB".',
					locations = {
						{ line = 4, column = 11 },
						{ line = 9, column = 11 },
					},
				},
			})
		end)

		it("no spreading itself deeply", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Dog { ...fragB }
      fragment fragB on Dog { ...fragC }
      fragment fragC on Dog { ...fragO }
      fragment fragX on Dog { ...fragY }
      fragment fragY on Dog { ...fragZ }
      fragment fragZ on Dog { ...fragO }
      fragment fragO on Dog { ...fragP }
      fragment fragP on Dog { ...fragA, ...fragX }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragB", "fragC", "fragO", "fragP".',
					locations = {
						{ line = 2, column = 31 },
						{ line = 3, column = 31 },
						{ line = 4, column = 31 },
						{ line = 8, column = 31 },
						{ line = 9, column = 31 },
					},
				},
				{
					message = 'Cannot spread fragment "fragO" within itself via "fragP", "fragX", "fragY", "fragZ".',
					locations = {
						{ line = 8, column = 31 },
						{ line = 9, column = 41 },
						{ line = 5, column = 31 },
						{ line = 6, column = 31 },
						{ line = 7, column = 31 },
					},
				},
			})
		end)

		it("no spreading itself deeply two paths", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Dog { ...fragB, ...fragC }
      fragment fragB on Dog { ...fragA }
      fragment fragC on Dog { ...fragA }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragB".',
					locations = {
						{ line = 2, column = 31 },
						{ line = 3, column = 31 },
					},
				},
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragC".',
					locations = {
						{ line = 2, column = 41 },
						{ line = 4, column = 31 },
					},
				},
			})
		end)

		it("no spreading itself deeply two paths -- alt traverse order", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Dog { ...fragC }
      fragment fragB on Dog { ...fragC }
      fragment fragC on Dog { ...fragA, ...fragB }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragC".',
					locations = {
						{ line = 2, column = 31 },
						{ line = 4, column = 31 },
					},
				},
				{
					message = 'Cannot spread fragment "fragC" within itself via "fragB".',
					locations = {
						{ line = 4, column = 41 },
						{ line = 3, column = 31 },
					},
				},
			})
		end)

		it("no spreading itself deeply and immediately", function()
			expectErrors(
				expect,
				[[
      fragment fragA on Dog { ...fragB }
      fragment fragB on Dog { ...fragB, ...fragC }
      fragment fragC on Dog { ...fragA, ...fragB }
			]]
			).toEqual({
				{
					message = 'Cannot spread fragment "fragB" within itself.',
					locations = { { line = 3, column = 31 } },
				},
				{
					message = 'Cannot spread fragment "fragA" within itself via "fragB", "fragC".',
					locations = {
						{ line = 2, column = 31 },
						{ line = 3, column = 41 },
						{ line = 4, column = 31 },
					},
				},
				{
					message = 'Cannot spread fragment "fragB" within itself via "fragC".',
					locations = {
						{ line = 3, column = 41 },
						{ line = 4, column = 41 },
					},
				},
			})
		end)
	end)
end
