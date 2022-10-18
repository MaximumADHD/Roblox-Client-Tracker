--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/NoFragmentCyclesRule.js

local root = script.Parent.Parent.Parent
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array

local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

exports.NoFragmentCyclesRule = function(context)
	-- // Tracks already visited fragments to maintain O(N) and to ensure that cycles
	-- // are not redundantly reported.
	local visitedFrags = {}

	-- // Array of AST nodes used to produce meaningful errors
	local spreadPath = {}

	-- // Position in the spread path
	local spreadPathIndexByName = {}

	-- ROBLOX deviation: we need to declare this function before
	-- the return statement
	local function detectCycleRecursive(fragment)
		if visitedFrags[fragment.name.value] then
			return
		end

		local fragmentName = fragment.name.value
		visitedFrags[fragmentName] = true

		local spreadNodes = context:getFragmentSpreads(fragment.selectionSet)

		if #spreadNodes == 0 then
			return
		end

		spreadPathIndexByName[fragmentName] = #spreadPath

		for _, spreadNode in ipairs(spreadNodes) do
			local spreadName = spreadNode.name.value
			local cycleIndex = spreadPathIndexByName[spreadName]

			table.insert(spreadPath, spreadNode)

			if cycleIndex == nil then
				local spreadFragment = context:getFragment(spreadName)
				if spreadFragment then
					detectCycleRecursive(spreadFragment)
				end
			else
				local cyclePath = Array.slice(spreadPath, cycleIndex + 1)
				local viaPath = table.concat(
					Array.map(Array.slice(cyclePath, 1, #cyclePath), function(s)
						return '"' .. s.name.value .. '"'
					end),
					", "
				)

				context:reportError(
					GraphQLError.new(
						('Cannot spread fragment "%s" within itself'):format(spreadName)
							.. (viaPath ~= "" and (" via %s."):format(viaPath) or "."),
						cyclePath
					)
				)
			end
			table.remove(spreadPath)
		end

		spreadPathIndexByName[fragmentName] = nil
	end

	return {
		OperationDefinition = function()
			return false
		end,
		FragmentDefinition = function(_self, node)
			detectCycleRecursive(node)
			return false
		end,
	}
end

return exports
