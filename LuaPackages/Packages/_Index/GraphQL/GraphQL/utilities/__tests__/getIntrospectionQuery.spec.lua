--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/getIntrospectionQuery-test.js

local srcWorkspace = script.Parent.Parent.Parent
local getIntrospectionQuery =
	require(srcWorkspace.utilities.getIntrospectionQuery).getIntrospectionQuery

-- ROBLOX Deviation: utility function for finding multiple matches
local function stringFindAll(str, pattern)
	local matches = {}
	for match in str:gmatch(pattern) do
		table.insert(matches, match)
	end
	return matches
end

return function()
	local function expectIntrospectionQuery(options)
		local query = getIntrospectionQuery(options)
		-- ROBLOX Deviation: move the position of toRegExp to the top as they cannot appear after a return statement
		local function toRegExp(name: string)
			-- ROBLOX Deviation: no exact representation of word boundary, so we watch for non-alphanumeric characters and the underscore
			local pattern = "[^%a%d_]" .. name .. "[^%a%d_]"
			return pattern
		end

		return {
			toMatch = function(name: string, times_: number)
				local times = times_ or 1
				local pattern = toRegExp(name)

				local index = string.find(query, pattern)

				expect(index).to.be.ok()
				local matches = stringFindAll(query, pattern)
				expect(#matches).to.equal(times)
			end,
			toNotMatch = function(name: string)
				local pattern = toRegExp(name)

				local index = string.find(query, pattern)
				expect(index).to.never.be.ok()
			end,
		}
	end

	describe("getIntrospectionQuery", function()
		it('skip all "description" fields', function()
			expectIntrospectionQuery().toMatch("description", 5)

			expectIntrospectionQuery({ descriptions = true }).toMatch("description", 5)

			expectIntrospectionQuery({ descriptions = false }).toNotMatch("description")
		end)

		it('include "isRepeatable" field on directives', function()
			expectIntrospectionQuery().toNotMatch("isRepeatable")

			expectIntrospectionQuery({ directiveIsRepeatable = true }).toMatch("isRepeatable")

			expectIntrospectionQuery({ directiveIsRepeatable = false }).toNotMatch("isRepeatable")
		end)

		it('include "description" field on schema', function()
			expectIntrospectionQuery().toMatch("description", 5)

			expectIntrospectionQuery({ schemaDescription = false }).toMatch("description", 5)
			expectIntrospectionQuery({ schemaDescription = true }).toMatch("description", 6)

			expectIntrospectionQuery({
				descriptions = false,
				schemaDescription = true,
			}).toNotMatch("description")
		end)

		it('include "specifiedByUrl" field', function()
			expectIntrospectionQuery().toNotMatch("specifiedByUrl")

			expectIntrospectionQuery({ specifiedByUrl = true }).toMatch("specifiedByUrl")

			expectIntrospectionQuery({ specifiedByUrl = false }).toNotMatch("specifiedByUrl")
		end)

		it('include "isDeprecated" field on input values', function()
			expectIntrospectionQuery().toMatch("isDeprecated", 2)

			expectIntrospectionQuery({ inputValueDeprecation = true }).toMatch("isDeprecated", 3)

			expectIntrospectionQuery({ inputValueDeprecation = false }).toMatch("isDeprecated", 2)
		end)

		it('include "deprecationReason" field on input values', function()
			expectIntrospectionQuery().toMatch("deprecationReason", 2)

			expectIntrospectionQuery({ inputValueDeprecation = true }).toMatch(
				"deprecationReason",
				3
			)

			expectIntrospectionQuery({ inputValueDeprecation = false }).toMatch(
				"deprecationReason",
				2
			)
		end)

		it("include deprecated input field and args", function()
			expectIntrospectionQuery().toMatch("includeDeprecated: true", 2)

			expectIntrospectionQuery({ inputValueDeprecation = true }).toMatch(
				"includeDeprecated: true",
				5
			)

			expectIntrospectionQuery({ inputValueDeprecation = false }).toMatch(
				"includeDeprecated: true",
				2
			)
		end)
	end)
end
